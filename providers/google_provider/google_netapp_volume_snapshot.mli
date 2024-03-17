(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_volume_snapshot__timeouts
type google_netapp_volume_snapshot

val google_netapp_volume_snapshot :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_netapp_volume_snapshot__timeouts ->
  location:string ->
  name:string ->
  volume_name:string ->
  string ->
  unit
