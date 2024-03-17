(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_openzfs_snapshot__timeouts
type aws_fsx_openzfs_snapshot

val aws_fsx_openzfs_snapshot :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_fsx_openzfs_snapshot__timeouts ->
  name:string prop ->
  volume_id:string prop ->
  string ->
  unit
