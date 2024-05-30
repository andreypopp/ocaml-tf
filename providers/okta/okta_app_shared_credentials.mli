(** Creates a SWA shared credentials app.
This resource allows you to create and configure SWA shared credentials app.
-> During an apply if there is change in 'status' the app will first be
activated or deactivated in accordance with the 'status' change. Then, all
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

type okta_app_shared_credentials

val okta_app_shared_credentials :
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?button_field:string prop ->
  ?checkbox:string prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?password_field:string prop ->
  ?preconfigured_app:string prop ->
  ?redirect_url:string prop ->
  ?shared_password:string prop ->
  ?shared_username:string prop ->
  ?status:string prop ->
  ?url:string prop ->
  ?url_regex:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?username_field:string prop ->
  ?timeouts:timeouts ->
  label:string prop ->
  unit ->
  okta_app_shared_credentials

val yojson_of_okta_app_shared_credentials :
  okta_app_shared_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessibility_error_redirect_url : string prop;
  accessibility_login_redirect_url : string prop;
  accessibility_self_service : bool prop;
  admin_note : string prop;
  app_links_json : string prop;
  auto_submit_toolbar : bool prop;
  button_field : string prop;
  checkbox : string prop;
  enduser_note : string prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  id : string prop;
  label : string prop;
  logo : string prop;
  logo_url : string prop;
  name : string prop;
  password_field : string prop;
  preconfigured_app : string prop;
  redirect_url : string prop;
  shared_password : string prop;
  shared_username : string prop;
  sign_on_mode : string prop;
  status : string prop;
  url : string prop;
  url_regex : string prop;
  user_name_template : string prop;
  user_name_template_push_status : string prop;
  user_name_template_suffix : string prop;
  user_name_template_type : string prop;
  username_field : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?button_field:string prop ->
  ?checkbox:string prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?password_field:string prop ->
  ?preconfigured_app:string prop ->
  ?redirect_url:string prop ->
  ?shared_password:string prop ->
  ?shared_username:string prop ->
  ?status:string prop ->
  ?url:string prop ->
  ?url_regex:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?username_field:string prop ->
  ?timeouts:timeouts ->
  label:string prop ->
  string ->
  t

val make :
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?button_field:string prop ->
  ?checkbox:string prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?password_field:string prop ->
  ?preconfigured_app:string prop ->
  ?redirect_url:string prop ->
  ?shared_password:string prop ->
  ?shared_username:string prop ->
  ?status:string prop ->
  ?url:string prop ->
  ?url_regex:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?username_field:string prop ->
  ?timeouts:timeouts ->
  label:string prop ->
  string ->
  t Tf_core.resource
