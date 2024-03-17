(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_openzfs_snapshot__timeouts
type aws_fsx_openzfs_snapshot

type t = private {
  arn : string prop;
  creation_time : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  volume_id : string prop;
}

val aws_fsx_openzfs_snapshot :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_fsx_openzfs_snapshot__timeouts ->
  name:string prop ->
  volume_id:string prop ->
  string ->
  t
