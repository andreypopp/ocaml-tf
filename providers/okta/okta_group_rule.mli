(** Creates an Okta Group Rule.
This resource allows you to create and configure an Okta Group Rule.
-> If the Okta API marks the 'status' of the rule as 'INVALID' the Okta
Terraform Provider will act in a force/replace manner and call the API to delete
the underlying rule resource and create a new rule resource. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_group_rule

val okta_group_rule :
  ?expression_type:string prop ->
  ?id:string prop ->
  ?remove_assigned_users:bool prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  expression_value:string prop ->
  group_assignments:string prop list ->
  name:string prop ->
  unit ->
  okta_group_rule

val yojson_of_okta_group_rule : okta_group_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  expression_type : string prop;
  expression_value : string prop;
  group_assignments : string list prop;
  id : string prop;
  name : string prop;
  remove_assigned_users : bool prop;
  status : string prop;
  users_excluded : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?expression_type:string prop ->
  ?id:string prop ->
  ?remove_assigned_users:bool prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  expression_value:string prop ->
  group_assignments:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?expression_type:string prop ->
  ?id:string prop ->
  ?remove_assigned_users:bool prop ->
  ?status:string prop ->
  ?users_excluded:string prop list ->
  expression_value:string prop ->
  group_assignments:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
