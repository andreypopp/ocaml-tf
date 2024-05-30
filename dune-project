(lang dune 3.7)

(name tf)

(generate_opam_files true)

(source
 (github andreypopp/ocaml-tf))

(authors "Andrey Popp")

(maintainers "Andrey Popp")

(license MIT)

(package
 (name tf)
 (synopsis "TF bindings to OCaml")
 (depends ocaml dune containers yojson ppx_yojson_conv_lib cmdliner))

(package
 (name tf_digitalocean)
 (synopsis "Generated bindings to DigitalOcean TF provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_cloudflare)
 (synopsis "Generated bindings to CloudFlare TF provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_azure)
 (synopsis "Generated bindings to Azure TF provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_google)
 (synopsis "Generated bindings to Google TF provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_kubernetes)
 (synopsis "Generated bindings to Kubernetes TF provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_hcloud)
 (synopsis "Generated bindings to Hetzner Cloud TF provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_aws)
 (synopsis "Generated bindings to AWS TF provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_github)
 (synopsis "Generated bindings to GitHub TF provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))
