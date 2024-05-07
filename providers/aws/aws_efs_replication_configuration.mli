(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination

val destination :
  ?availability_zone_name:string prop ->
  ?file_system_id:string prop ->
  ?kms_key_id:string prop ->
  ?region:string prop ->
  unit ->
  destination

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_efs_replication_configuration

val aws_efs_replication_configuration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  source_file_system_id:string prop ->
  destination:destination list ->
  unit ->
  aws_efs_replication_configuration

val yojson_of_aws_efs_replication_configuration :
  aws_efs_replication_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_time : string prop;
  id : string prop;
  original_source_file_system_arn : string prop;
  source_file_system_arn : string prop;
  source_file_system_id : string prop;
  source_file_system_region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  source_file_system_id:string prop ->
  destination:destination list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  source_file_system_id:string prop ->
  destination:destination list ->
  string ->
  t Tf_core.resource
