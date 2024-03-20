(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_efs_mount_target

val aws_efs_mount_target :
  ?id:string prop ->
  ?ip_address:string prop ->
  ?security_groups:string prop list ->
  ?timeouts:timeouts ->
  file_system_id:string prop ->
  subnet_id:string prop ->
  unit ->
  aws_efs_mount_target

val yojson_of_aws_efs_mount_target : aws_efs_mount_target -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?security_groups:string prop list ->
  ?timeouts:timeouts ->
  file_system_id:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ip_address:string prop ->
  ?security_groups:string prop list ->
  ?timeouts:timeouts ->
  file_system_id:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
