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
 (synopsis "Define terraform/opentofu configuration with OCaml")
 (depends ocaml dune containers yojson ppx_yojson_conv_lib cmdliner))

(package
 (name tf_digitalocean)
 (synopsis "Generated bindings to DigitalOcean terraform/opentofu provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_cloudflare)
 (synopsis "Generated bindings to CloudFlare terraform/opentofu provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_azurerm)
 (synopsis "Generated bindings to Azure RM terraform/opentofu provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_google)
 (synopsis "Generated bindings to Google terraform/opentofu provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_kubernetes)
 (synopsis "Generated bindings to Kubernetes terraform/opentofu provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_hcloud)
 (synopsis "Generated bindings to Hetzner Cloud terraform/opentofu provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_aws)
 (synopsis "Generated bindings to AWS terraform/opentofu provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_github)
 (synopsis "Generated bindings to GitHub terraform/opentofu provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_okta)
 (synopsis "Generated bindings to Okta terraform/opentofu provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))

(package
 (name tf_dnsimple)
 (synopsis "Generated bindings to DNSimple terraform/opentofu provider")
 (depends tf ocaml dune containers yojson ppx_yojson_conv_lib))
