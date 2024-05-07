(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_access_context_manager_access_policy

val google_access_context_manager_access_policy :
  ?id:string prop ->
  ?scopes:string prop list ->
  ?timeouts:timeouts ->
  parent:string prop ->
  title:string prop ->
  unit ->
  google_access_context_manager_access_policy

val yojson_of_google_access_context_manager_access_policy :
  google_access_context_manager_access_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  scopes : string list prop;
  title : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?scopes:string prop list ->
  ?timeouts:timeouts ->
  parent:string prop ->
  title:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?scopes:string prop list ->
  ?timeouts:timeouts ->
  parent:string prop ->
  title:string prop ->
  string ->
  t Tf_core.resource
