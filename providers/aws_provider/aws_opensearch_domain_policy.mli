(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearch_domain_policy__timeouts
type aws_opensearch_domain_policy

val aws_opensearch_domain_policy :
  ?id:string prop ->
  ?timeouts:aws_opensearch_domain_policy__timeouts ->
  access_policies:string prop ->
  domain_name:string prop ->
  string ->
  unit
