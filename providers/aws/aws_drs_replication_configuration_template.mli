(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pit_policy

val pit_policy :
  ?enabled:bool prop ->
  ?rule_id:float prop ->
  interval:float prop ->
  retention_duration:float prop ->
  units:string prop ->
  unit ->
  pit_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_drs_replication_configuration_template

val aws_drs_replication_configuration_template :
  ?auto_replicate_new_disks:bool prop ->
  ?ebs_encryption_key_arn:string prop ->
  ?staging_area_tags:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?pit_policy:pit_policy list ->
  ?timeouts:timeouts ->
  associate_default_security_group:bool prop ->
  bandwidth_throttling:float prop ->
  create_public_ip:bool prop ->
  data_plane_routing:string prop ->
  default_large_staging_disk_type:string prop ->
  ebs_encryption:string prop ->
  replication_server_instance_type:string prop ->
  replication_servers_security_groups_ids:string prop list ->
  staging_area_subnet_id:string prop ->
  use_dedicated_replication_server:bool prop ->
  unit ->
  aws_drs_replication_configuration_template

val yojson_of_aws_drs_replication_configuration_template :
  aws_drs_replication_configuration_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  associate_default_security_group : bool prop;
  auto_replicate_new_disks : bool prop;
  bandwidth_throttling : float prop;
  create_public_ip : bool prop;
  data_plane_routing : string prop;
  default_large_staging_disk_type : string prop;
  ebs_encryption : string prop;
  ebs_encryption_key_arn : string prop;
  id : string prop;
  replication_server_instance_type : string prop;
  replication_servers_security_groups_ids : string list prop;
  staging_area_subnet_id : string prop;
  staging_area_tags : (string * string) list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  use_dedicated_replication_server : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_replicate_new_disks:bool prop ->
  ?ebs_encryption_key_arn:string prop ->
  ?staging_area_tags:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?pit_policy:pit_policy list ->
  ?timeouts:timeouts ->
  associate_default_security_group:bool prop ->
  bandwidth_throttling:float prop ->
  create_public_ip:bool prop ->
  data_plane_routing:string prop ->
  default_large_staging_disk_type:string prop ->
  ebs_encryption:string prop ->
  replication_server_instance_type:string prop ->
  replication_servers_security_groups_ids:string prop list ->
  staging_area_subnet_id:string prop ->
  use_dedicated_replication_server:bool prop ->
  string ->
  t

val make :
  ?auto_replicate_new_disks:bool prop ->
  ?ebs_encryption_key_arn:string prop ->
  ?staging_area_tags:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?pit_policy:pit_policy list ->
  ?timeouts:timeouts ->
  associate_default_security_group:bool prop ->
  bandwidth_throttling:float prop ->
  create_public_ip:bool prop ->
  data_plane_routing:string prop ->
  default_large_staging_disk_type:string prop ->
  ebs_encryption:string prop ->
  replication_server_instance_type:string prop ->
  replication_servers_security_groups_ids:string prop list ->
  staging_area_subnet_id:string prop ->
  use_dedicated_replication_server:bool prop ->
  string ->
  t Tf_core.resource
