(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_domain_name

type t = private {
  appsync_domain_name : string prop;
  certificate_arn : string prop;
  description : string prop;
  domain_name : string prop;
  hosted_zone_id : string prop;
  id : string prop;
}

val aws_appsync_domain_name :
  ?description:string prop ->
  ?id:string prop ->
  certificate_arn:string prop ->
  domain_name:string prop ->
  string ->
  t
