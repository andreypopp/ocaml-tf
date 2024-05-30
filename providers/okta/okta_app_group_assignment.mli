(** Assigns a group to an application. This resource allows you to create an App Group assignment. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type okta_app_group_assignment

val okta_app_group_assignment :
  ?id:string prop ->
  ?priority:float prop ->
  ?profile:string prop ->
  ?retain_assignment:bool prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  group_id:string prop ->
  unit ->
  okta_app_group_assignment

val yojson_of_okta_app_group_assignment :
  okta_app_group_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  group_id : string prop;
  id : string prop;
  priority : float prop;
  profile : string prop;
  retain_assignment : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?priority:float prop ->
  ?profile:string prop ->
  ?retain_assignment:bool prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?priority:float prop ->
  ?profile:string prop ->
  ?retain_assignment:bool prop ->
  ?timeouts:timeouts ->
  app_id:string prop ->
  group_id:string prop ->
  string ->
  t Tf_core.resource
