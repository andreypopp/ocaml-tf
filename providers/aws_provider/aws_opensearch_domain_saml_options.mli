(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearch_domain_saml_options__saml_options__idp
type aws_opensearch_domain_saml_options__saml_options
type aws_opensearch_domain_saml_options__timeouts
type aws_opensearch_domain_saml_options

val aws_opensearch_domain_saml_options :
  ?id:string prop ->
  ?timeouts:aws_opensearch_domain_saml_options__timeouts ->
  domain_name:string prop ->
  saml_options:aws_opensearch_domain_saml_options__saml_options list ->
  string ->
  unit
