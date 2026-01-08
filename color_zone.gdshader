shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;
uniform vec2 npc_positions[16];
uniform float radii[16];
uniform int npc_count : hint_range(0, 16) = 0;
uniform float edge_softness : hint_range(0.0, 1.0) = 0.1;

void fragment() {
    vec4 screen_color = texture(SCREEN_TEXTURE, SCREEN_UV);
    
    // Calculate grayscale using standard luminance weights
    float luminance = dot(screen_color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 grayscale = vec3(luminance);
    
    float mask = 0.0;
    
    // Loop through NPCs and create color circles
    // Note: npc_positions must be passed in screen coordinates (pixels)
    for (int i = 0; i < npc_count; i++) {
        float dist = distance(FRAGCOORD.xy, npc_positions[i]);
        float circle = 1.0 - smoothstep(radii[i] * (1.0 - edge_softness), radii[i], dist);
        mask = clamp(mask + circle, 0.0, 1.0);
    }
    
    COLOR.rgb = mix(grayscale, screen_color.rgb, mask);
}
