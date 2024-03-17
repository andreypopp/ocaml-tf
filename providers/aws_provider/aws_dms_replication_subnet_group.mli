(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_replication_subnet_group

val aws_dms_replication_subnet_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  replication_subnet_group_description:string prop ->
  replication_subnet_group_id:string prop ->
  subnet_ids:string prop list ->
  string ->
  unit
