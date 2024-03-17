(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_mount_target__timeouts
type aws_efs_mount_target

val aws_efs_mount_target :
  ?id:string ->
  ?ip_address:string ->
  ?security_groups:string list ->
  ?timeouts:aws_efs_mount_target__timeouts ->
  file_system_id:string ->
  subnet_id:string ->
  string ->
  unit
