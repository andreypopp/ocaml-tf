(** Get OpenID userinfo about the credentials used with the Google provider, specifically the email.
This datasource enables you to export the email of the account you've authenticated the provider with; this can be used alongside data.google_client_config's access_token to perform OpenID Connect authentication with GKE and configure an RBAC role for the email used.

~> This resource will only work as expected if the provider is configured to use the https://www.googleapis.com/auth/userinfo.email scope! You will receive an error otherwise. The provider uses this scope by default. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_client_openid_userinfo

val google_client_openid_userinfo :
  unit -> google_client_openid_userinfo

val yojson_of_google_client_openid_userinfo :
  google_client_openid_userinfo -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  email : string prop;
  id : string prop;
}

val register : ?tf_module:tf_module -> string -> t
val make : string -> t Tf_core.resource
