(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_fsx_openzfs_snapshot

val aws_fsx_openzfs_snapshot :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?snapshot_ids:string prop list ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  unit ->
  aws_fsx_openzfs_snapshot

val yojson_of_aws_fsx_openzfs_snapshot :
  aws_fsx_openzfs_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  creation_time : string prop;
  id : string prop;
  most_recent : bool prop;
  name : string prop;
  snapshot_id : string prop;
  snapshot_ids : string list prop;
  tags : (string * string) list prop;
  volume_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?snapshot_ids:string prop list ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?snapshot_ids:string prop list ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
