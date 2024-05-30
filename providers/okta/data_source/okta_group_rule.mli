(** Get a group rule from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_group_rule

val okta_group_rule :
  ?id:string prop ->
  ?name:string prop ->
  ?status:string prop ->
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
  status : string prop;
  users_excluded : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?status:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?status:string prop ->
  string ->
  t Tf_core.resource
