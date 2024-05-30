(** Resource to manage a set of group memberships for a specific user. This resource allows you to bulk manage groups for a single user, independent of the user schema itself. This allows you to manage group membership in terraform without overriding other automatic membership operations performed by group rules and other non-managed actions. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_user_group_memberships

val okta_user_group_memberships :
  ?id:string prop ->
  groups:string prop list ->
  user_id:string prop ->
  unit ->
  okta_user_group_memberships

val yojson_of_okta_user_group_memberships :
  okta_user_group_memberships -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  groups : string list prop;
  id : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  groups:string prop list ->
  user_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  groups:string prop list ->
  user_id:string prop ->
  string ->
  t Tf_core.resource
