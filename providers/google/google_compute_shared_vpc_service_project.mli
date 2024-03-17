(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_shared_vpc_service_project__timeouts
type google_compute_shared_vpc_service_project

type t = private {
  deletion_policy : string prop;
  host_project : string prop;
  id : string prop;
  service_project : string prop;
}

val google_compute_shared_vpc_service_project :
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?timeouts:google_compute_shared_vpc_service_project__timeouts ->
  host_project:string prop ->
  service_project:string prop ->
  string ->
  t
