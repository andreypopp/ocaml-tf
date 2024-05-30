(** Manages brand. This resource allows you to create and configure an Okta [Brand](https://developer.okta.com/docs/reference/api/brands/#brand-object). *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_brand

val okta_brand :
  ?agree_to_custom_privacy_policy:bool prop ->
  ?brand_id:string prop ->
  ?custom_privacy_policy_url:string prop ->
  ?default_app_app_instance_id:string prop ->
  ?default_app_app_link_name:string prop ->
  ?default_app_classic_application_uri:string prop ->
  ?locale:string prop ->
  ?remove_powered_by_okta:bool prop ->
  name:string prop ->
  unit ->
  okta_brand

val yojson_of_okta_brand : okta_brand -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agree_to_custom_privacy_policy : bool prop;
  brand_id : string prop;
  custom_privacy_policy_url : string prop;
  default_app_app_instance_id : string prop;
  default_app_app_link_name : string prop;
  default_app_classic_application_uri : string prop;
  email_domain_id : string prop;
  id : string prop;
  is_default : bool prop;
  links : string prop;
  locale : string prop;
  name : string prop;
  remove_powered_by_okta : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?agree_to_custom_privacy_policy:bool prop ->
  ?brand_id:string prop ->
  ?custom_privacy_policy_url:string prop ->
  ?default_app_app_instance_id:string prop ->
  ?default_app_app_link_name:string prop ->
  ?default_app_classic_application_uri:string prop ->
  ?locale:string prop ->
  ?remove_powered_by_okta:bool prop ->
  name:string prop ->
  string ->
  t

val make :
  ?agree_to_custom_privacy_policy:bool prop ->
  ?brand_id:string prop ->
  ?custom_privacy_policy_url:string prop ->
  ?default_app_app_instance_id:string prop ->
  ?default_app_app_link_name:string prop ->
  ?default_app_classic_application_uri:string prop ->
  ?locale:string prop ->
  ?remove_powered_by_okta:bool prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
