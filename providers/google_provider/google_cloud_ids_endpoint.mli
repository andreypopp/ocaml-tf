(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_ids_endpoint__timeouts
type google_cloud_ids_endpoint

val google_cloud_ids_endpoint :
  ?description:string ->
  ?threat_exceptions:string list ->
  ?timeouts:google_cloud_ids_endpoint__timeouts ->
  location:string ->
  name:string ->
  network:string ->
  severity:string ->
  string ->
  unit
