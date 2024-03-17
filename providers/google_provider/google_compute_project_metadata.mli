(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_project_metadata__timeouts
type google_compute_project_metadata

val google_compute_project_metadata :
  ?id:string ->
  ?project:string ->
  ?timeouts:google_compute_project_metadata__timeouts ->
  metadata:(string * string) list ->
  string ->
  unit
