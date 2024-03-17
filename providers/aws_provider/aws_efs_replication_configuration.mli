(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_replication_configuration__destination
type aws_efs_replication_configuration__timeouts
type aws_efs_replication_configuration

val aws_efs_replication_configuration :
  ?id:string ->
  ?timeouts:aws_efs_replication_configuration__timeouts ->
  source_file_system_id:string ->
  destination:aws_efs_replication_configuration__destination list ->
  string ->
  unit
