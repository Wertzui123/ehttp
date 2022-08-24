# ehttp
This library is a fork of the [http module](https://github.com/vlang/v/tree/master/vlib/net/http) of the V standard library.
<br>It uses [TLSe](https://github.com/eduardsui/tlse) instead of OpenSSL to implement Transport Layer Security.

## Advantages of TLSe over OpenSSL
* Smaller executables
* Easier deployment
* More permissive licenses (public domain, BSD or MIT)

## Why is all the code in another submodule?
The actual http module lives inside the submodule "http" of this "ehttp" module.
<br>This is for easier conversion between the original http module and this fork.

## Dependencies
* [tlse](https://github.com/Wertzui123/TLSe) (a TLSe wrapper for V)