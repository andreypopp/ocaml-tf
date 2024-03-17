(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_scope_rbac_role_binding__role
type google_gke_hub_scope_rbac_role_binding__timeouts

type google_gke_hub_scope_rbac_role_binding__state = {
  code : string;  (** code *)
}
[@@deriving yojson_of]

type google_gke_hub_scope_rbac_role_binding

val google_gke_hub_scope_rbac_role_binding :
  ?group:string ->
  ?labels:(string * string) list ->
  ?user:string ->
  ?timeouts:google_gke_hub_scope_rbac_role_binding__timeouts ->
  scope_id:string ->
  scope_rbac_role_binding_id:string ->
  role:google_gke_hub_scope_rbac_role_binding__role list ->
  string ->
  unit
