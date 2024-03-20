(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_client_openid_userinfo

val google_client_openid_userinfo :
  unit -> google_client_openid_userinfo

val yojson_of_google_client_openid_userinfo :
  google_client_openid_userinfo -> json

(** RESOURCE REGISTRATION *)

type t = private { email : string prop; id : string prop }

val register : ?tf_module:tf_module -> string -> t
val make : string -> t Tf_core.resource
