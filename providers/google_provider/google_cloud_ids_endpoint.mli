(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_ids_endpoint__timeouts
type google_cloud_ids_endpoint

val google_cloud_ids_endpoint :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?threat_exceptions:string prop list ->
  ?timeouts:google_cloud_ids_endpoint__timeouts ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  severity:string prop ->
  string ->
  unit
