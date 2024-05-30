(** Manage the customized signin page of a brand *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type content_security_policy_setting

val content_security_policy_setting :
  ?mode:string prop ->
  ?report_uri:string prop ->
  ?src_list:string prop list ->
  unit ->
  content_security_policy_setting

type widget_customizations

val widget_customizations :
  ?authenticator_page_custom_link_label:string prop ->
  ?authenticator_page_custom_link_url:string prop ->
  ?classic_recovery_flow_email_or_username_label:string prop ->
  ?custom_link_1_label:string prop ->
  ?custom_link_1_url:string prop ->
  ?custom_link_2_label:string prop ->
  ?custom_link_2_url:string prop ->
  ?forgot_password_label:string prop ->
  ?forgot_password_url:string prop ->
  ?help_label:string prop ->
  ?help_url:string prop ->
  ?password_info_tip:string prop ->
  ?password_label:string prop ->
  ?show_password_visibility_toggle:bool prop ->
  ?show_user_identifier:bool prop ->
  ?sign_in_label:string prop ->
  ?unlock_account_label:string prop ->
  ?unlock_account_url:string prop ->
  ?username_info_tip:string prop ->
  ?username_label:string prop ->
  widget_generation:string prop ->
  unit ->
  widget_customizations

type okta_customized_signin_page

val okta_customized_signin_page :
  brand_id:string prop ->
  page_content:string prop ->
  widget_version:string prop ->
  content_security_policy_setting:content_security_policy_setting ->
  widget_customizations:widget_customizations ->
  unit ->
  okta_customized_signin_page

val yojson_of_okta_customized_signin_page :
  okta_customized_signin_page -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  brand_id : string prop;
  id : string prop;
  page_content : string prop;
  widget_version : string prop;
}

val register :
  ?tf_module:tf_module ->
  brand_id:string prop ->
  page_content:string prop ->
  widget_version:string prop ->
  content_security_policy_setting:content_security_policy_setting ->
  widget_customizations:widget_customizations ->
  string ->
  t

val make :
  brand_id:string prop ->
  page_content:string prop ->
  widget_version:string prop ->
  content_security_policy_setting:content_security_policy_setting ->
  widget_customizations:widget_customizations ->
  string ->
  t Tf_core.resource
