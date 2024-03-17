(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_replication_instance__timeouts
type aws_dms_replication_instance

val aws_dms_replication_instance :
  ?allow_major_version_upgrade:bool ->
  ?apply_immediately:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_dms_replication_instance__timeouts ->
  replication_instance_class:string ->
  replication_instance_id:string ->
  string ->
  unit
