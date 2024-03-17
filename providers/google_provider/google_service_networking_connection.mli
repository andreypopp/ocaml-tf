(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_networking_connection__timeouts
type google_service_networking_connection

val google_service_networking_connection :
  ?deletion_policy:string prop ->
  ?id:string prop ->
  ?timeouts:google_service_networking_connection__timeouts ->
  network:string prop ->
  reserved_peering_ranges:string prop list ->
  service:string prop ->
  string ->
  unit
