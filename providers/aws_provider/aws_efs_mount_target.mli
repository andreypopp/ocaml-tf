(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_mount_target__timeouts
type aws_efs_mount_target

val aws_efs_mount_target :
  ?id:string prop ->
  ?ip_address:string prop ->
  ?security_groups:string prop list ->
  ?timeouts:aws_efs_mount_target__timeouts ->
  file_system_id:string prop ->
  subnet_id:string prop ->
  string ->
  unit
