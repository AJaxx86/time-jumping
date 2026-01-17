class_name Inventory extends Resource

@export var items: Dictionary = {}


func add_item(new_item: String, amount: int) -> void:
    for i in range(amount + 1):
        if items.has(new_item):
            items[new_item] += 1
        else:
            items[new_item] = 1

func remove_item(item_name: String, amount: int) -> void:
    for i in range(amount + 1):
        if items.has(item_name):
            items[item_name] -= 1
            if items[item_name] == 0:
                items.erase(item_name)
        else:
            print("Item not found")