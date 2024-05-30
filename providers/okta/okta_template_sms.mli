(** Creates an Okta SMS Template. This resource allows you to create and configure an Okta SMS Template. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type translations

val translations :
  language:string prop ->
  template:string prop ->
  unit ->
  translations

type okta_template_sms

val okta_template_sms :
  ?id:string prop ->
  template:string prop ->
  type_:string prop ->
  translations:translations list ->
  unit ->
  okta_template_sms

val yojson_of_okta_template_sms : okta_template_sms -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  template : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  template:string prop ->
  type_:string prop ->
  translations:translations list ->
  string ->
  t

val make :
  ?id:string prop ->
  template:string prop ->
  type_:string prop ->
  translations:translations list ->
  string ->
  t Tf_core.resource
