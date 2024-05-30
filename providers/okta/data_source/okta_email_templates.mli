(** Get the email templates belonging to a brand in an Okta organization. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type email_templates = {
  links : string prop;  (** links *)
  name : string prop;  (** name *)
}

type okta_email_templates

val okta_email_templates :
  ?id:string prop ->
  brand_id:string prop ->
  unit ->
  okta_email_templates

val yojson_of_okta_email_templates : okta_email_templates -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  brand_id : string prop;
  email_templates : email_templates list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  brand_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  brand_id:string prop ->
  string ->
  t Tf_core.resource
