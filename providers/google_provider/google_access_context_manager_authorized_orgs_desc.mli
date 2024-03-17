(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_access_context_manager_authorized_orgs_desc__timeouts
type google_access_context_manager_authorized_orgs_desc

type t = private {
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
  t
