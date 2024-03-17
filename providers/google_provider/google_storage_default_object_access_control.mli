(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_default_object_access_control__timeouts

type google_storage_default_object_access_control__project_team = {
  project_number : string prop;  (** project_number *)
  team : string prop;  (** team *)
}

type google_storage_default_object_access_control

val google_storage_default_object_access_control :
  ?id:string prop ->
  ?object_:string prop ->
  ?timeouts:google_storage_default_object_access_control__timeouts ->
  bucket:string prop ->
  entity:string prop ->
  role:string prop ->
  string ->
  unit
