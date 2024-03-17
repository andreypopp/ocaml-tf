(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_replication_subnet_group

val aws_dms_replication_subnet_group :
  ?tags:(string * string) list ->
  replication_subnet_group_description:string ->
  replication_subnet_group_id:string ->
  subnet_ids:string list ->
  string ->
  unit
