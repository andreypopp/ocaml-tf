(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_domain_name_api_association

type t = private {
  api_id : string prop;
  domain_name : string prop;
  id : string prop;
}

val aws_appsync_domain_name_api_association :
  ?id:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  string ->
  t
