(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_networking_connection__timeouts
type google_service_networking_connection

val google_service_networking_connection :
  ?deletion_policy:string ->
  ?id:string ->
  ?timeouts:google_service_networking_connection__timeouts ->
  network:string ->
  reserved_peering_ranges:string list ->
  service:string ->
  string ->
  unit
