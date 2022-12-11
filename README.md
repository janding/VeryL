# Micro Menu and Transmogrifier Add-on for World of Warcraft
## Features

* Colors the buttons in the Micro Menu
* Hides the transmogrifier button on the minimap

## Installation

1. Download the add-on from the link provided
2. Unzip the files into your World of Warcraft "Interface/AddOns" directory

## Customization

To customize the colors of the buttons in the Micro Menu, open the "VeryL.lua"
file in a text editor. You will see lines that look like this:

    region:SetVertexColor(1, 0.2, 0.4, 1)

The first three numbers in these lines (in this case, 1, 0.2, and 0.4) are the
red, green, and blue values for the color of the button. You can modify these
values to change the color of the buttons in the Micro Menu. For example, to
change the color to a bright blue, you could use the following values:

    region:SetVertexColor(0, 0.5, 1, 1)

Save the file and the changes will take effect the next time you log in to the
game. You can use any combination of red, green, and blue values to create the
color you want. Have fun experimenting!
