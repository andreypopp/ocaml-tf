(** Creates a Three Field Application.
		This resource allows you to create and configure a Three Field Application.
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

type okta_app_three_field

val okta_app_three_field :
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?credentials_scheme:string prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?reveal_password:bool prop ->
  ?shared_password:string prop ->
  ?shared_username:string prop ->
  ?status:string prop ->
  ?url_regex:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?timeouts:timeouts ->
  button_selector:string prop ->
  extra_field_selector:string prop ->
  extra_field_value:string prop ->
  label:string prop ->
  password_selector:string prop ->
  url:string prop ->
  username_selector:string prop ->
  unit ->
  okta_app_three_field

val yojson_of_okta_app_three_field : okta_app_three_field -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessibility_error_redirect_url : string prop;
  accessibility_login_redirect_url : string prop;
  accessibility_self_service : bool prop;
  admin_note : string prop;
  app_links_json : string prop;
  auto_submit_toolbar : bool prop;
  button_selector : string prop;
  credentials_scheme : string prop;
  enduser_note : string prop;
  extra_field_selector : string prop;
  extra_field_value : string prop;
  hide_ios : bool prop;
  hide_web : bool prop;
  id : string prop;
  label : string prop;
  logo : string prop;
  logo_url : string prop;
  name : string prop;
  password_selector : string prop;
  reveal_password : bool prop;
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
  username_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?credentials_scheme:string prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?reveal_password:bool prop ->
  ?shared_password:string prop ->
  ?shared_username:string prop ->
  ?status:string prop ->
  ?url_regex:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?timeouts:timeouts ->
  button_selector:string prop ->
  extra_field_selector:string prop ->
  extra_field_value:string prop ->
  label:string prop ->
  password_selector:string prop ->
  url:string prop ->
  username_selector:string prop ->
  string ->
  t

val make :
  ?accessibility_error_redirect_url:string prop ->
  ?accessibility_login_redirect_url:string prop ->
  ?accessibility_self_service:bool prop ->
  ?admin_note:string prop ->
  ?app_links_json:string prop ->
  ?auto_submit_toolbar:bool prop ->
  ?credentials_scheme:string prop ->
  ?enduser_note:string prop ->
  ?hide_ios:bool prop ->
  ?hide_web:bool prop ->
  ?id:string prop ->
  ?logo:string prop ->
  ?reveal_password:bool prop ->
  ?shared_password:string prop ->
  ?shared_username:string prop ->
  ?status:string prop ->
  ?url_regex:string prop ->
  ?user_name_template:string prop ->
  ?user_name_template_push_status:string prop ->
  ?user_name_template_suffix:string prop ->
  ?user_name_template_type:string prop ->
  ?timeouts:timeouts ->
  button_selector:string prop ->
  extra_field_selector:string prop ->
  extra_field_value:string prop ->
  label:string prop ->
  password_selector:string prop ->
  url:string prop ->
  username_selector:string prop ->
  string ->
  t Tf_core.resource
