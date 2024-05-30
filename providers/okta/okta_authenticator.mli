(** ~> **WARNING:** This feature is only available as a part of the Identity Engine. [Contact support](mailto:dev-inquiries@okta.com) for further information.

This resource allows you to configure different authenticators.

-> **Create:** The Okta API has an odd notion of create for authenticators. If
the authenticator doesn't exist then a one time 'POST /api/v1/authenticators' to
create the authenticator (hard create) will be performed. Thereafter, that
authenticator is never deleted, it is only deactivated (soft delete). Therefore,
if the authenticator already exists create is just a soft import of an existing
authenticator. This does not apply to custom_otp authenticator. There can be 
multiple custom_otp authenticator. To create new custom_otp authenticator, a new 
name and key = custom_otp is required. If an old name is used, it will simply 
reactivate the old custom_otp authenticator

-> **Delete:** Authenticators can not be truly deleted therefore delete is soft.
Delete will attempt to deativate the authenticator. An authenticator can only be
deactivated if it's not in use by any other policy. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_authenticator

val okta_authenticator :
  ?id:string prop ->
  ?provider_auth_port:float prop ->
  ?provider_host:string prop ->
  ?provider_hostname:string prop ->
  ?provider_integration_key:string prop ->
  ?provider_json:string prop ->
  ?provider_secret_key:string prop ->
  ?provider_shared_secret:string prop ->
  ?provider_user_name_template:string prop ->
  ?settings:string prop ->
  ?status:string prop ->
  key:string prop ->
  name:string prop ->
  unit ->
  okta_authenticator

val yojson_of_okta_authenticator : okta_authenticator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  key : string prop;
  name : string prop;
  provider_auth_port : float prop;
  provider_host : string prop;
  provider_hostname : string prop;
  provider_instance_id : string prop;
  provider_integration_key : string prop;
  provider_json : string prop;
  provider_secret_key : string prop;
  provider_shared_secret : string prop;
  provider_type : string prop;
  provider_user_name_template : string prop;
  settings : string prop;
  status : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?provider_auth_port:float prop ->
  ?provider_host:string prop ->
  ?provider_hostname:string prop ->
  ?provider_integration_key:string prop ->
  ?provider_json:string prop ->
  ?provider_secret_key:string prop ->
  ?provider_shared_secret:string prop ->
  ?provider_user_name_template:string prop ->
  ?settings:string prop ->
  ?status:string prop ->
  key:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?provider_auth_port:float prop ->
  ?provider_host:string prop ->
  ?provider_hostname:string prop ->
  ?provider_integration_key:string prop ->
  ?provider_json:string prop ->
  ?provider_secret_key:string prop ->
  ?provider_shared_secret:string prop ->
  ?provider_user_name_template:string prop ->
  ?settings:string prop ->
  ?status:string prop ->
  key:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
