(** Resource to manage administrative Role assignments for a User

These operations allow the creation and manipulation of custom roles as custom collections of permissions.

~> **NOTE:** This an Early Access feature. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_admin_role_custom

val okta_admin_role_custom :
  ?id:string prop ->
  ?permissions:string prop list ->
  description:string prop ->
  label:string prop ->
  unit ->
  okta_admin_role_custom

val yojson_of_okta_admin_role_custom : okta_admin_role_custom -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  label : string prop;
  permissions : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?permissions:string prop list ->
  description:string prop ->
  label:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?permissions:string prop list ->
  description:string prop ->
  label:string prop ->
  string ->
  t Tf_core.resource
