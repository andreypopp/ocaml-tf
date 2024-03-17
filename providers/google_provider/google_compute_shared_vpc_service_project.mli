(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_shared_vpc_service_project__timeouts
type google_compute_shared_vpc_service_project

val google_compute_shared_vpc_service_project :
  ?deletion_policy:string ->
  ?timeouts:google_compute_shared_vpc_service_project__timeouts ->
  host_project:string ->
  service_project:string ->
  string ->
  unit
