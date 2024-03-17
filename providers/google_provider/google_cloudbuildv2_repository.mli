(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudbuildv2_repository__timeouts
type google_cloudbuildv2_repository

val google_cloudbuildv2_repository :
  ?annotations:(string * string) list ->
  ?id:string ->
  ?location:string ->
  ?project:string ->
  ?timeouts:google_cloudbuildv2_repository__timeouts ->
  name:string ->
  parent_connection:string ->
  remote_uri:string ->
  string ->
  unit
