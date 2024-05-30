(** Get a single Email Template for a Brand belonging to an Okta organization. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_email_template

val okta_email_template :
  ?id:string prop ->
  brand_id:string prop ->
  name:string prop ->
  unit ->
  okta_email_template

val yojson_of_okta_email_template : okta_email_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  brand_id : string prop;
  id : string prop;
  links : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  brand_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  brand_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
