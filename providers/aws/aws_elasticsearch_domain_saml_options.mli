(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticsearch_domain_saml_options__saml_options__idp
type aws_elasticsearch_domain_saml_options__saml_options
type aws_elasticsearch_domain_saml_options__timeouts
type aws_elasticsearch_domain_saml_options
type t = private { domain_name : string prop; id : string prop }

val aws_elasticsearch_domain_saml_options :
  ?id:string prop ->
  ?timeouts:aws_elasticsearch_domain_saml_options__timeouts ->
  domain_name:string prop ->
  saml_options:
    aws_elasticsearch_domain_saml_options__saml_options list ->
  string ->
  t
