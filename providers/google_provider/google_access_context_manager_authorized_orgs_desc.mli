(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_authorized_orgs_desc__timeouts
type google_access_context_manager_authorized_orgs_desc

val google_access_context_manager_authorized_orgs_desc :
  ?asset_type:string prop ->
  ?authorization_direction:string prop ->
  ?authorization_type:string prop ->
  ?id:string prop ->
  ?orgs:string prop list ->
  ?timeouts:
    google_access_context_manager_authorized_orgs_desc__timeouts ->
  name:string prop ->
  parent:string prop ->
  string ->
  unit
