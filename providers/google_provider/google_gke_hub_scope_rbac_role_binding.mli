(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_scope_rbac_role_binding__role
type google_gke_hub_scope_rbac_role_binding__timeouts

type google_gke_hub_scope_rbac_role_binding__state = {
  code : string prop;  (** code *)
}

type google_gke_hub_scope_rbac_role_binding

val google_gke_hub_scope_rbac_role_binding :
  ?group:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?user:string prop ->
  ?timeouts:google_gke_hub_scope_rbac_role_binding__timeouts ->
  scope_id:string prop ->
  scope_rbac_role_binding_id:string prop ->
  role:google_gke_hub_scope_rbac_role_binding__role list ->
  string ->
  unit
