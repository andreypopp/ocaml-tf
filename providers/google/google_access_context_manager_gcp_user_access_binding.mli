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

type google_access_context_manager_gcp_user_access_binding

val google_access_context_manager_gcp_user_access_binding :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_levels:string prop list ->
  group_key:string prop ->
  organization_id:string prop ->
  unit ->
  google_access_context_manager_gcp_user_access_binding

val yojson_of_google_access_context_manager_gcp_user_access_binding :
  google_access_context_manager_gcp_user_access_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_levels : string list prop;
  group_key : string prop;
  id : string prop;
  name : string prop;
  organization_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_levels:string prop list ->
  group_key:string prop ->
  organization_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_levels:string prop list ->
  group_key:string prop ->
  organization_id:string prop ->
  string ->
  t Tf_core.resource
