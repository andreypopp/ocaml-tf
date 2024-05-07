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

type google_access_context_manager_authorized_orgs_desc

val google_access_context_manager_authorized_orgs_desc :
  ?asset_type:string prop ->
  ?authorization_direction:string prop ->
  ?authorization_type:string prop ->
  ?id:string prop ->
  ?orgs:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  unit ->
  google_access_context_manager_authorized_orgs_desc

val yojson_of_google_access_context_manager_authorized_orgs_desc :
  google_access_context_manager_authorized_orgs_desc -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  asset_type : string prop;
  authorization_direction : string prop;
  authorization_type : string prop;
  create_time : string prop;
  id : string prop;
  name : string prop;
  orgs : string list prop;
  parent : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?asset_type:string prop ->
  ?authorization_direction:string prop ->
  ?authorization_type:string prop ->
  ?id:string prop ->
  ?orgs:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?asset_type:string prop ->
  ?authorization_direction:string prop ->
  ?authorization_type:string prop ->
  ?id:string prop ->
  ?orgs:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
