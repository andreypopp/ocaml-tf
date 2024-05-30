(** Resource to manage the assignment and unassignment of Custom Roles
These operations allow the creation and manipulation of custom roles as custom collections of permissions.
		
~> **NOTE:** This an Early Access feature. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_admin_role_custom_assignments

val okta_admin_role_custom_assignments :
  ?id:string prop ->
  ?members:string prop list ->
  custom_role_id:string prop ->
  resource_set_id:string prop ->
  unit ->
  okta_admin_role_custom_assignments

val yojson_of_okta_admin_role_custom_assignments :
  okta_admin_role_custom_assignments -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  custom_role_id : string prop;
  id : string prop;
  members : string list prop;
  resource_set_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?members:string prop list ->
  custom_role_id:string prop ->
  resource_set_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?members:string prop list ->
  custom_role_id:string prop ->
  resource_set_id:string prop ->
  string ->
  t Tf_core.resource
