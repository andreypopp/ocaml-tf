(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_location__timeouts
type google_notebooks_location

type t = private {
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

val google_notebooks_location :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:google_notebooks_location__timeouts ->
  string ->
  t
