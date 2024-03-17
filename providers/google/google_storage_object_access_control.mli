(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_object_access_control__timeouts

type google_storage_object_access_control__project_team = {
  project_number : string prop;  (** project_number *)
  team : string prop;  (** team *)
}

type google_storage_object_access_control

type t = private {
  bucket : string prop;
  domain : string prop;
  email : string prop;
  entity : string prop;
  entity_id : string prop;
  generation : float prop;
  id : string prop;
  object_ : string prop;
  project_team :
    google_storage_object_access_control__project_team list prop;
  role : string prop;
}

val google_storage_object_access_control :
  ?id:string prop ->
  ?timeouts:google_storage_object_access_control__timeouts ->
  bucket:string prop ->
  entity:string prop ->
  object_:string prop ->
  role:string prop ->
  string ->
  t
