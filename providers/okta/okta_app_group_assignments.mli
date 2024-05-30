(** Assigns groups to an application. This resource allows you to create multiple App Group assignments. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type group

val group :
  ?priority:float prop ->
  ?profile:string prop ->
  id:string prop ->
  unit ->
  group

type okta_app_group_assignments

val okta_app_group_assignments :
  ?id:string prop ->
  app_id:string prop ->
  group:group list ->
  unit ->
  okta_app_group_assignments

val yojson_of_okta_app_group_assignments :
  okta_app_group_assignments -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  app_id:string prop ->
  group:group list ->
  string ->
  t

val make :
  ?id:string prop ->
  app_id:string prop ->
  group:group list ->
  string ->
  t Tf_core.resource
