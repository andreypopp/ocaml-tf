(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_object_access_control__timeouts

type google_storage_object_access_control__project_team = {
  project_number : string;  (** project_number *)
  team : string;  (** team *)
}

type google_storage_object_access_control

val google_storage_object_access_control :
  ?id:string ->
  ?timeouts:google_storage_object_access_control__timeouts ->
  bucket:string ->
  entity:string ->
  object_:string ->
  role:string ->
  string ->
  unit
