(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_openzfs_snapshot__timeouts
type aws_fsx_openzfs_snapshot

val aws_fsx_openzfs_snapshot :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_fsx_openzfs_snapshot__timeouts ->
  name:string ->
  volume_id:string ->
  string ->
  unit
