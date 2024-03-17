(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudsearch_domain_service_access_policy__timeouts
type aws_cloudsearch_domain_service_access_policy

type t = private {
  access_policy : string prop;
  domain_name : string prop;
  id : string prop;
}

val aws_cloudsearch_domain_service_access_policy :
  ?id:string prop ->
  ?timeouts:aws_cloudsearch_domain_service_access_policy__timeouts ->
  access_policy:string prop ->
  domain_name:string prop ->
  string ->
  t
