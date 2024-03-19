(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_fsx_openzfs_snapshot

val aws_fsx_openzfs_snapshot :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  volume_id:string prop ->
  unit ->
  aws_fsx_openzfs_snapshot

val yojson_of_aws_fsx_openzfs_snapshot :
  aws_fsx_openzfs_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  creation_time : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  volume_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  volume_id:string prop ->
  string ->
  t
