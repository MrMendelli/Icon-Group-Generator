# Icon Group Generator

This tool makes use of [ImageMagick's](https://imagemagick.org/index.php) `convert.exe`. For optimal results, infiles should already have an equally squared aspect ratio. Due to how this tool works, the sizes of the various icons within the group are forced into predetermined dimensions. Icons **must** be squared in both aspect ratio and dimensions. The infile should be no larger than 256 x 256 pixels in resolution, larger images can be used but conversion will take longer. Once a file is converted, it will be output to the same location as the infile and will have the same file name.

Icon groups made consist of the following sizes:

- 256
- 128
- 96
- 64
- 48
- 32
- 24
- 16

_*These are used for scaling in Windows and other platforms that render for scaling._

## Usage

In order to use the converter, simply drag-and-drop images onto the executable. Scripting is supported as well _(*see shell integration)_. Multiple files can be converted at once.

## Shell Integration

Included is a registry file. This must be manually edited and merged with the registry. The file can be edited with any text editor, but note that some break the formatting necessary for it to be compatible with the registry editor when merging. The `"Icon"=` and command lines must have the full paths to the executable added. This will vary based on where you put the program. Simply copy the path and place before the double slash _(`\\`)_ before each instance of `\\Icon Group Generator.exe`. Also note that each `\` in the path must be doubled inside of the registry file. The icon assignment and label are both optional, but the line for the command is required to work. Once the file is modified just double-click and you will be prompted to merge it with the registry.

The shell integration can be manually added for any desired filetype, but the current registry file included with builds targets the image file class on Windows 10. This means any file type that Windows 10 recognizes as a valid image type will have the shell option for conversion.
