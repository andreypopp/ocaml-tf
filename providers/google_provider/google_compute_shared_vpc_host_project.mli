(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_shared_vpc_host_project__timeouts
type google_compute_shared_vpc_host_project
type t = private { id : string prop; project : string prop }

val google_compute_shared_vpc_host_project :
  ?id:string prop ->
  ?timeouts:google_compute_shared_vpc_host_project__timeouts ->
  project:string prop ->
  string ->
  t
