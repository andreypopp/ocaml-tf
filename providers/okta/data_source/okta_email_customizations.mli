(** Get the email customizations of an email template belonging to a brand in an Okta organization. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type email_customizations = {
  body : string prop;  (** body *)
  id : string prop;  (** id *)
  is_default : bool prop;  (** is_default *)
  language : string prop;  (** language *)
  links : string prop;  (** links *)
  subject : string prop;  (** subject *)
}

type okta_email_customizations

val okta_email_customizations :
  ?id:string prop ->
  brand_id:string prop ->
  template_name:string prop ->
  unit ->
  okta_email_customizations

val yojson_of_okta_email_customizations :
  okta_email_customizations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  brand_id : string prop;
  email_customizations : email_customizations list prop;
  id : string prop;
  template_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  brand_id:string prop ->
  template_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  brand_id:string prop ->
  template_name:string prop ->
  string ->
  t Tf_core.resource
