(** Creates email domain. This resource allows you to create and configure an email domain. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_validation_records = {
  expiration : string prop;  (** expiration *)
  fqdn : string prop;  (** fqdn *)
  record_type : string prop;  (** record_type *)
  value : string prop;  (** value *)
}

type okta_email_domain

val okta_email_domain :
  ?id:string prop ->
  brand_id:string prop ->
  display_name:string prop ->
  domain:string prop ->
  user_name:string prop ->
  unit ->
  okta_email_domain

val yojson_of_okta_email_domain : okta_email_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  brand_id : string prop;
  display_name : string prop;
  dns_validation_records : dns_validation_records list prop;
  domain : string prop;
  id : string prop;
  user_name : string prop;
  validation_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  brand_id:string prop ->
  display_name:string prop ->
  domain:string prop ->
  user_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  brand_id:string prop ->
  display_name:string prop ->
  domain:string prop ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
