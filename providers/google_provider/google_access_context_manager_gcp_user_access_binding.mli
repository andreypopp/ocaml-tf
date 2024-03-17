(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_gcp_user_access_binding__timeouts
type google_access_context_manager_gcp_user_access_binding

val google_access_context_manager_gcp_user_access_binding :
  ?id:string prop ->
  ?timeouts:
    google_access_context_manager_gcp_user_access_binding__timeouts ->
  access_levels:string prop list ->
  group_key:string prop ->
  organization_id:string prop ->
  string ->
  unit
