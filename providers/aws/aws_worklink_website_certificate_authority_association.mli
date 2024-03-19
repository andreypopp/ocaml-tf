(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_worklink_website_certificate_authority_association

val aws_worklink_website_certificate_authority_association :
  ?display_name:string prop ->
  ?id:string prop ->
  certificate:string prop ->
  fleet_arn:string prop ->
  unit ->
  aws_worklink_website_certificate_authority_association

val yojson_of_aws_worklink_website_certificate_authority_association :
  aws_worklink_website_certificate_authority_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate : string prop;
  display_name : string prop;
  fleet_arn : string prop;
  id : string prop;
  website_ca_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  certificate:string prop ->
  fleet_arn:string prop ->
  string ->
  t
