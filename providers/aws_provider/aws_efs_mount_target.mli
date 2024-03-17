(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_mount_target__timeouts
type aws_efs_mount_target

val aws_efs_mount_target :
  ?timeouts:aws_efs_mount_target__timeouts ->
  file_system_id:string ->
  subnet_id:string ->
  string ->
  unit
