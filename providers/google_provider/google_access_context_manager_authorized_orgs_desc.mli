(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_authorized_orgs_desc__timeouts
type google_access_context_manager_authorized_orgs_desc

val google_access_context_manager_authorized_orgs_desc :
  ?asset_type:string ->
  ?authorization_direction:string ->
  ?authorization_type:string ->
  ?id:string ->
  ?orgs:string list ->
  ?timeouts:
    google_access_context_manager_authorized_orgs_desc__timeouts ->
  name:string ->
  parent:string ->
  string ->
  unit
