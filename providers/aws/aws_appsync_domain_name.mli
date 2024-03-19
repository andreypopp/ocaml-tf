(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_appsync_domain_name

val aws_appsync_domain_name :
  ?description:string prop ->
  ?id:string prop ->
  certificate_arn:string prop ->
  domain_name:string prop ->
  unit ->
  aws_appsync_domain_name

val yojson_of_aws_appsync_domain_name :
  aws_appsync_domain_name -> json

(** RESOURCE REGISTRATION *)

type t = private {
  appsync_domain_name : string prop;
  certificate_arn : string prop;
  description : string prop;
  domain_name : string prop;
  hosted_zone_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  certificate_arn:string prop ->
  domain_name:string prop ->
  string ->
  t
