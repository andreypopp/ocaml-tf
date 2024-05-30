(** Resource to manage a set of memberships for a specific group.
This resource will allow you to bulk manage group membership in Okta for a given
group. This offers an interface to pass multiple users into a single resource
call, for better API resource usage. If you need a relationship of a single 
user to many groups, please use the 'okta_user_group_memberships' resource.
**Important**: The default behavior of the resource is to only maintain the
state of user ids that are assigned it. This behavior will signal drift only if
those users stop being part of the group. If the desired behavior is track all
users that are added/removed from the group make use of the 'track_all_users'
argument with this resource. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_group_memberships

val okta_group_memberships :
  ?id:string prop ->
  ?track_all_users:bool prop ->
  group_id:string prop ->
  users:string prop list ->
  unit ->
  okta_group_memberships

val yojson_of_okta_group_memberships : okta_group_memberships -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  group_id : string prop;
  id : string prop;
  track_all_users : bool prop;
  users : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?track_all_users:bool prop ->
  group_id:string prop ->
  users:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?track_all_users:bool prop ->
  group_id:string prop ->
  users:string prop list ->
  string ->
  t Tf_core.resource
