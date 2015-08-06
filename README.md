# Updated Graphics
Factorio mod that change graphics with official and unofficial better graphics.

## versions
Updated Graphics can be used in two ways for basic and advanced users.

### Basic usage
For this you only need to put the zip package in the mods folder.

### Advanced usage
For advanced users, this mods contains tools they can use, you need to unpack the package in the mods folder :
* __update.lua__ : update the mod with new graphics
* __install.lua__ :  backup original graphics and install modified graphics provided by texture pack.
* __uninstall.lua__ : uninstall modified graphics and restore original graphics in factorio.
* __backup_original.lua__ : backup original graphics.
* __backup_modified.lua__ : backup modified graphics.
* __restore_original.lua__ : backup modified graphics and restore original graphics.
* __restore_modified.lua__ : backup original graphics and restore modified graphics.

In case you have installed core graphics, before updating factorio, you need to execute __restore_original.lua__ then after the update, execute __restore_modified.lua__ to get the modified graphics.

Graphics can be broken if used on a factorio version the modpack was not made for.
