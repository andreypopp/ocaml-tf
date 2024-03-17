(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_project_metadata__timeouts
type google_compute_project_metadata

type t = private {
  id : string prop;
  metadata : (string * string) list prop;
  project : string prop;
}

val google_compute_project_metadata :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_project_metadata__timeouts ->
  metadata:(string * string prop) list ->
  string ->
  t
