(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ebs_snapshot_ids

val aws_ebs_snapshot_ids :
  ?id:string prop ->
  ?owners:string prop list ->
  ?restorable_by_user_ids:string prop list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ebs_snapshot_ids

val yojson_of_aws_ebs_snapshot_ids : aws_ebs_snapshot_ids -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ids : string list prop;
  owners : string list prop;
  restorable_by_user_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?owners:string prop list ->
  ?restorable_by_user_ids:string prop list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?owners:string prop list ->
  ?restorable_by_user_ids:string prop list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
