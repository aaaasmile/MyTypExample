//#import "@preview/based:0.2.0": base64
// download from https://typst.app/universe/package/based
#import "@local/based:0.2.0": base64 // local repo in %appdata%\typst\packages\local\based\0.2.0

#import "@preview/tiaoma:0.2.1"

// per vedere i font installati: typst fonts --variants

#set page( margin: 0pt)

// `base64 -w 0 smile.png` (10x10):
#let base64-encoded-image = "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAACXBIWXMAAC4jAAAuIwF4pT92AAAASUlEQVQYGa3OWwoAIAgEQNf739k0EjVCfxKCHtMqiEh0jcWjOKBAkQjPe7MFdun/IbRdDNb05nvolzWzEx0DdozK96W1PzjNHxcgphkBs9CoHwAAAABJRU5ErkJggg=="
#let raw-image = base64.decode(base64-encoded-image)

#image.decode(raw-image, format: "png")

#tiaoma.ean("1234567890128")\

#place(right, dx: -25pt)[
    #grid(
    columns: (auto, auto),
    column-gutter: 2em,
    row-gutter: 0.7em,
    [PLZ],
    [Stadt],
    [1100],
    [Wien])
]

#tiaoma.barcode(lorem(105), "QRCode")
#v(1em)
#place(left, dx: 25pt)[
    #grid(
    columns: (auto, auto),
    column-gutter: 10em,
    row-gutter: 0.7em,
    //block(width: 100%, height: 3em, stroke: 1pt),
    //grid.vline(stroke: 0.5pt),
    grid.cell(align: left, [Name]),
    //block(width: 100%, height: 3em, stroke: 1pt),
    grid.cell(align: left, [Max]),
    [Tel:],
    [+456688329999])
]
#v(4em) // no space in vertical with place
CCC #h(1fr) DDD  \
EEE #h(1fr) FFF #h(2fr) GGG \

#v(1em)
#align(right + bottom)[
    #block(width: auto, height: auto, stroke: 1pt, 
    fill: luma(128), radius: 5pt, inset: 3pt, 
    outset: 5pt, spacing: 10pt, above: 10em, below: 5em, clip: true, 
    [form no sign lol])
]
#v(1em)