# Icon Group Generator

This tool makes use of [ImageMagick's](https://imagemagick.org/index.php) 'convert.exe'. For optimal results, infiles should already have an equally squared aspect ratio. Due to how this tool works, the sizes of the various icons within the group are forced into predetermined dimensions. Icons **must** be squared in both aspect ratio and dimensions. The infile should be no larger than 256 x 256 (px) in resolution, larger images can be used but conversion will take longer. Once a file is converted, it will be output to the same location as the infile and will have the same file label.

Icon groups are made with the following sizes of icons:

- 256
- 128
- 96
- 54
- 48
- 32
- 24
- 16

_*These are used for scaling in Windows and other APIs that render for scaling._

## Usage

In order to use the converter, simple drag-and-drop images onto the executable. Scripting is supported as well _(*see shell integration)_.

## Shell Integration

Included is a registry file. This must be manually edited and merged with the registry. The file can be edited with any text editor, but note that some break the formatting necessary for it to be compatible with the registry editor when merging. The `"Icon"=` and command lines must have the full paths to the executable added. This will vary based on where you put the program. Simply copy the path and place before the double slash (`\\`) before each instance of `\\Icon Group Generator.exe`. Also note that each `\` in the path must be doubled inside of the registry file. The icon assignment and label are both optional, but the line for the command is required to work. Once the file is modified just double-click and you will be prompted to merge it with the registry.

The shell integration can be manually added for any desired filetype, but the current registry file inculded with builds targets the image file class on Windows 10. This means any file type that Windows 10 reckngnizes as a valid image type will have the shell option for conversion.
