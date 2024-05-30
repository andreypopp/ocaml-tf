(** Get the email customization of an email template belonging to a brand in an Okta organization. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_email_customization

val okta_email_customization :
  brand_id:string prop ->
  customization_id:string prop ->
  template_name:string prop ->
  unit ->
  okta_email_customization

val yojson_of_okta_email_customization :
  okta_email_customization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  body : string prop;
  brand_id : string prop;
  customization_id : string prop;
  id : string prop;
  is_default : bool prop;
  language : string prop;
  links : string prop;
  subject : string prop;
  template_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  brand_id:string prop ->
  customization_id:string prop ->
  template_name:string prop ->
  string ->
  t

val make :
  brand_id:string prop ->
  customization_id:string prop ->
  template_name:string prop ->
  string ->
  t Tf_core.resource
