## Examples on learning Typst
Some examples in Typst, created for learning the tool.

### Powershell
Download the typst binary from https://github.com/typst/typst/releases into C:\typst\bin  
Set _typst.exe_ into the path

    $env:path = "C:\typst\bin;" + $env:path

### Documentation
https://typst.app/docs

### Visual Code
I have created these examples using Visual Code with the extension "Typst LSP" from Nathan Varner.
Inside the integrated terminal I use the _watch_ command. For example:

    cd .\myinv\
    typst.exe watch .\layout-data.ty
The generated pdf file layout-data.pdf could be seen inside the browser with "Open Externally".