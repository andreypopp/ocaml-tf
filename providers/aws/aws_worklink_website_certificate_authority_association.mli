(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_worklink_website_certificate_authority_association

type t = private {
  certificate : string prop;
  display_name : string prop;
  fleet_arn : string prop;
  id : string prop;
  website_ca_id : string prop;
}

val aws_worklink_website_certificate_authority_association :
  ?display_name:string prop ->
  ?id:string prop ->
  certificate:string prop ->
  fleet_arn:string prop ->
  string ->
  t
