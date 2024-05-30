(** Retrieve the default signin page of a brand *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type content_security_policy_setting

val content_security_policy_setting :
  unit -> content_security_policy_setting

type widget_customizations

val widget_customizations : unit -> widget_customizations

type okta_default_signin_page

val okta_default_signin_page :
  brand_id:string prop ->
  content_security_policy_setting:content_security_policy_setting ->
  widget_customizations:widget_customizations ->
  unit ->
  okta_default_signin_page

val yojson_of_okta_default_signin_page :
  okta_default_signin_page -> json

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
  content_security_policy_setting:content_security_policy_setting ->
  widget_customizations:widget_customizations ->
  string ->
  t

val make :
  brand_id:string prop ->
  content_security_policy_setting:content_security_policy_setting ->
  widget_customizations:widget_customizations ->
  string ->
  t Tf_core.resource
