(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_volume_snapshot__timeouts
type google_netapp_volume_snapshot

val google_netapp_volume_snapshot :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_netapp_volume_snapshot__timeouts ->
  location:string prop ->
  name:string prop ->
  volume_name:string prop ->
  string ->
  unit
