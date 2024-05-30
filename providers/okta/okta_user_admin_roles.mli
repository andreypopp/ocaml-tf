(** Resource to manage a set of administrator roles for a specific user. This resource allows you to manage admin roles for a single user, independent of the user schema itself. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_user_admin_roles

val okta_user_admin_roles :
  ?disable_notifications:bool prop ->
  ?id:string prop ->
  admin_roles:string prop list ->
  user_id:string prop ->
  unit ->
  okta_user_admin_roles

val yojson_of_okta_user_admin_roles : okta_user_admin_roles -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin_roles : string list prop;
  disable_notifications : bool prop;
  id : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disable_notifications:bool prop ->
  ?id:string prop ->
  admin_roles:string prop list ->
  user_id:string prop ->
  string ->
  t

val make :
  ?disable_notifications:bool prop ->
  ?id:string prop ->
  admin_roles:string prop list ->
  user_id:string prop ->
  string ->
  t Tf_core.resource
