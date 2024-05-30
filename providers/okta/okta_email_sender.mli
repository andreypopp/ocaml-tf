(** Creates custom email sender. This resource allows you to create and configure a custom email sender. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_records = {
  fqdn : string prop;  (** fqdn *)
  record_type : string prop;  (** record_type *)
  value : string prop;  (** value *)
}

type okta_email_sender

val okta_email_sender :
  ?id:string prop ->
  from_address:string prop ->
  from_name:string prop ->
  subdomain:string prop ->
  unit ->
  okta_email_sender

val yojson_of_okta_email_sender : okta_email_sender -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dns_records : dns_records list prop;
  from_address : string prop;
  from_name : string prop;
  id : string prop;
  status : string prop;
  subdomain : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  from_address:string prop ->
  from_name:string prop ->
  subdomain:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  from_address:string prop ->
  from_name:string prop ->
  subdomain:string prop ->
  string ->
  t Tf_core.resource
