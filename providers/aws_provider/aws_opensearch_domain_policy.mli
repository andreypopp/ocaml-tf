(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearch_domain_policy__timeouts
type aws_opensearch_domain_policy

type t = private {
  access_policies : string prop;
  domain_name : string prop;
  id : string prop;
}

val aws_opensearch_domain_policy :
  ?id:string prop ->
  ?timeouts:aws_opensearch_domain_policy__timeouts ->
  access_policies:string prop ->
  domain_name:string prop ->
  string ->
  t
