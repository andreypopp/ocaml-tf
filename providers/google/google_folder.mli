(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder__timeouts
type google_folder

type t = private {
  create_time : string prop;
  display_name : string prop;
  folder_id : string prop;
  id : string prop;
  lifecycle_state : string prop;
  name : string prop;
  parent : string prop;
}

val google_folder :
  ?id:string prop ->
  ?timeouts:google_folder__timeouts ->
  display_name:string prop ->
  parent:string prop ->
  string ->
  t
