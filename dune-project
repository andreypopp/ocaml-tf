(lang dune 3.14)

(name tf)

(generate_opam_files true)

(source
 (github andreypopp/ocaml-tf))

(authors "Andrey Popp")

(maintainers "Andrey Popp")

(license LICENSE)

(package
 (name tf)
 (synopsis "TF bindings to OCaml")
 (depends ocaml dune containers yojson))
