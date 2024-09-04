(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_scaling_configuration

val auto_scaling_configuration :
  auto_scaling_metric:string prop ->
  max_node_count:float prop ->
  metric_target:float prop ->
  min_node_count:float prop ->
  scale_in_cooldown_seconds:float prop ->
  scale_out_cooldown_seconds:float prop ->
  unit ->
  auto_scaling_configuration

type cache_storage_configurations

val cache_storage_configurations :
  size:float prop ->
  type_:string prop ->
  unit ->
  cache_storage_configurations

type capacity_configuration

val capacity_configuration :
  node_count:float prop ->
  node_type:string prop ->
  unit ->
  capacity_configuration

type code

val code :
  ?s3_object_version:string prop ->
  s3_bucket:string prop ->
  s3_key:string prop ->
  unit ->
  code

type database__cache_configurations

val database__cache_configurations :
  ?db_paths:string prop list ->
  cache_type:string prop ->
  unit ->
  database__cache_configurations

type database

val database :
  ?changeset_id:string prop ->
  ?dataview_name:string prop ->
  ?cache_configurations:database__cache_configurations list ->
  database_name:string prop ->
  unit ->
  database

type savedown_storage_configuration

val savedown_storage_configuration :
  ?size:float prop ->
  ?type_:string prop ->
  ?volume_name:string prop ->
  unit ->
  savedown_storage_configuration

type scaling_group_configuration

val scaling_group_configuration :
  ?cpu:float prop ->
  ?memory_limit:float prop ->
  memory_reservation:float prop ->
  node_count:float prop ->
  scaling_group_name:string prop ->
  unit ->
  scaling_group_configuration

type tickerplant_log_configuration

val tickerplant_log_configuration :
  tickerplant_log_volumes:string prop list ->
  unit ->
  tickerplant_log_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_configuration

val vpc_configuration :
  ip_address_type:string prop ->
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  unit ->
  vpc_configuration

type aws_finspace_kx_cluster

val aws_finspace_kx_cluster :
  ?availability_zone_id:string prop ->
  ?command_line_arguments:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?execution_role:string prop ->
  ?id:string prop ->
  ?initialization_script:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?auto_scaling_configuration:auto_scaling_configuration list ->
  ?cache_storage_configurations:cache_storage_configurations list ->
  ?capacity_configuration:capacity_configuration list ->
  ?code:code list ->
  ?database:database list ->
  ?savedown_storage_configuration:savedown_storage_configuration list ->
  ?scaling_group_configuration:scaling_group_configuration list ->
  ?tickerplant_log_configuration:tickerplant_log_configuration list ->
  ?timeouts:timeouts ->
  az_mode:string prop ->
  environment_id:string prop ->
  name:string prop ->
  release_label:string prop ->
  type_:string prop ->
  vpc_configuration:vpc_configuration list ->
  unit ->
  aws_finspace_kx_cluster

val yojson_of_aws_finspace_kx_cluster :
  aws_finspace_kx_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zone_id : string prop;
  az_mode : string prop;
  command_line_arguments : string Tf_core.assoc prop;
  created_timestamp : string prop;
  description : string prop;
  environment_id : string prop;
  execution_role : string prop;
  id : string prop;
  initialization_script : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  release_label : string prop;
  status : string prop;
  status_reason : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zone_id:string prop ->
  ?command_line_arguments:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?execution_role:string prop ->
  ?id:string prop ->
  ?initialization_script:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?auto_scaling_configuration:auto_scaling_configuration list ->
  ?cache_storage_configurations:cache_storage_configurations list ->
  ?capacity_configuration:capacity_configuration list ->
  ?code:code list ->
  ?database:database list ->
  ?savedown_storage_configuration:savedown_storage_configuration list ->
  ?scaling_group_configuration:scaling_group_configuration list ->
  ?tickerplant_log_configuration:tickerplant_log_configuration list ->
  ?timeouts:timeouts ->
  az_mode:string prop ->
  environment_id:string prop ->
  name:string prop ->
  release_label:string prop ->
  type_:string prop ->
  vpc_configuration:vpc_configuration list ->
  string ->
  t

val make :
  ?availability_zone_id:string prop ->
  ?command_line_arguments:string prop Tf_core.assoc ->
  ?description:string prop ->
  ?execution_role:string prop ->
  ?id:string prop ->
  ?initialization_script:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?auto_scaling_configuration:auto_scaling_configuration list ->
  ?cache_storage_configurations:cache_storage_configurations list ->
  ?capacity_configuration:capacity_configuration list ->
  ?code:code list ->
  ?database:database list ->
  ?savedown_storage_configuration:savedown_storage_configuration list ->
  ?scaling_group_configuration:scaling_group_configuration list ->
  ?tickerplant_log_configuration:tickerplant_log_configuration list ->
  ?timeouts:timeouts ->
  az_mode:string prop ->
  environment_id:string prop ->
  name:string prop ->
  release_label:string prop ->
  type_:string prop ->
  vpc_configuration:vpc_configuration list ->
  string ->
  t Tf_core.resource
