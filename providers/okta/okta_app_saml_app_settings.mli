(** Manages app settings of the SAML application.
This resource allows you to manage app settings of the SAML Application . It's basically the same as
app_settings_json field in okta_app_saml resource and can be used in cases where settings require to be managed separately. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_saml_app_settings

val okta_app_saml_app_settings :
  ?id:string prop ->
  app_id:string prop ->
  settings:string prop ->
  unit ->
  okta_app_saml_app_settings

val yojson_of_okta_app_saml_app_settings :
  okta_app_saml_app_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  settings : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  app_id:string prop ->
  settings:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  app_id:string prop ->
  settings:string prop ->
  string ->
  t Tf_core.resource
