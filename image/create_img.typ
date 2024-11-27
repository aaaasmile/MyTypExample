//#import "@preview/based:0.2.0": base64
// download from https://typst.app/universe/package/based
#import "@local/based:0.2.0": base64 // local repo in %appdata%\typst\packages\local\based\0.2.0

#import "@preview/tiaoma:0.2.1"

#set page(width: auto, height: auto, margin: 0pt)

// `base64 -w 0 smile.png` (10x10):
#let base64-encoded-image = "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAACXBIWXMAAC4jAAAuIwF4pT92AAAASUlEQVQYGa3OWwoAIAgEQNf739k0EjVCfxKCHtMqiEh0jcWjOKBAkQjPe7MFdun/IbRdDNb05nvolzWzEx0DdozK96W1PzjNHxcgphkBs9CoHwAAAABJRU5ErkJggg=="
#let raw-image = base64.decode(base64-encoded-image)

#image.decode(raw-image, format: "png")

#tiaoma.ean("1234567890128")\
#tiaoma.barcode(lorem(105), "QRCode")