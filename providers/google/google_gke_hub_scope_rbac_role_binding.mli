(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type state = { code : string prop  (** code *) }
type role

val role : ?predefined_role:string prop -> unit -> role

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gke_hub_scope_rbac_role_binding

val google_gke_hub_scope_rbac_role_binding :
  ?group:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?user:string prop ->
  ?timeouts:timeouts ->
  scope_id:string prop ->
  scope_rbac_role_binding_id:string prop ->
  role:role list ->
  unit ->
  google_gke_hub_scope_rbac_role_binding

val yojson_of_google_gke_hub_scope_rbac_role_binding :
  google_gke_hub_scope_rbac_role_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  group : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  scope_id : string prop;
  scope_rbac_role_binding_id : string prop;
  state : state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
  user : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?group:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?user:string prop ->
  ?timeouts:timeouts ->
  scope_id:string prop ->
  scope_rbac_role_binding_id:string prop ->
  role:role list ->
  string ->
  t

val make :
  ?group:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?user:string prop ->
  ?timeouts:timeouts ->
  scope_id:string prop ->
  scope_rbac_role_binding_id:string prop ->
  role:role list ->
  string ->
  t Tf_core.resource
