# Chest-Autosaver
Chest Content Autosaver in Godot using Resources and Tool Script

# Usage

Add a chest scene to the main scene. This will automatically run a tool script that generates a `ChestContent` Resource for the chest and finds a valid save file name for it in the given `SAVE_PATH` (default is in "res://", change it to "user://" to make it work in exported games).

Now you can change the gold inside that chest in the editor and it will be automatically saved and persists or change it while running the game and call `save()` on the chest to make it persist.

# Notes

Havent tested with:
- Exported game
- Multiple chests
