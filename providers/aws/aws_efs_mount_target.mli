(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_efs_mount_target__timeouts
type aws_efs_mount_target

type t = private {
  availability_zone_id : string prop;
  availability_zone_name : string prop;
  dns_name : string prop;
  file_system_arn : string prop;
  file_system_id : string prop;
  id : string prop;
  ip_address : string prop;
  mount_target_dns_name : string prop;
  network_interface_id : string prop;
  owner_id : string prop;
  security_groups : string list prop;
  subnet_id : string prop;
}

val aws_efs_mount_target :
  ?id:string prop ->
  ?ip_address:string prop ->
  ?security_groups:string prop list ->
  ?timeouts:aws_efs_mount_target__timeouts ->
  file_system_id:string prop ->
  subnet_id:string prop ->
  string ->
  t
