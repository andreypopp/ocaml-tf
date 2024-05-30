(** This resource allows you to create and configure a Bookmark Application.
-> During an apply if there is change in status the app will first be
activated or deactivated in accordance with the status change. Then, all
other arguments that changed will be applied. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type okta_app_bookmark

val okta_app_bookmark :
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?authentication_policy:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?request_integration:bool prop ->
  ?status:string prop ->
  ?timeouts:timeouts ->
  label:string prop ->
  url:string prop ->
  unit ->
  okta_app_bookmark

val yojson_of_okta_app_bookmark : okta_app_bookmark -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessibility_error_redirect_url : string prop;
  accessibility_login_redirect_url : string prop;
  accessibility_self_service : bool prop;
  admin_note : string prop;
  app_links_json : string prop;
  authentication_policy : string prop;
  auto_submit_toolbar : bool prop;
  enduser_note : string prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  id : string prop;
  label : string prop;
  logo : string prop;
  logo_url : string prop;
  name : string prop;
  request_integration : bool prop;
  sign_on_mode : string prop;
  status : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?authentication_policy:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?request_integration:bool prop ->
  ?status:string prop ->
  ?timeouts:timeouts ->
  label:string prop ->
  url:string prop ->
  string ->
  t

val make :
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?authentication_policy:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?request_integration:bool prop ->
  ?status:string prop ->
  ?timeouts:timeouts ->
  label:string prop ->
  url:string prop ->
  string ->
  t Tf_core.resource
