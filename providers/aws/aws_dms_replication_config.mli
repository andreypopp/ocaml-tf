(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type compute_config

val compute_config :
  ?availability_zone:string prop ->
  ?dns_name_servers:string prop ->
  ?kms_key_id:string prop ->
  ?max_capacity_units:float prop ->
  ?min_capacity_units:float prop ->
  ?multi_az:bool prop ->
  ?preferred_maintenance_window:string prop ->
  ?vpc_security_group_ids:string prop list ->
  replication_subnet_group_id:string prop ->
  unit ->
  compute_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_dms_replication_config

val aws_dms_replication_config :
  ?id:string prop ->
  ?replication_settings:string prop ->
  ?resource_identifier:string prop ->
  ?start_replication:bool prop ->
  ?supplemental_settings:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  replication_config_identifier:string prop ->
  replication_type:string prop ->
  source_endpoint_arn:string prop ->
  table_mappings:string prop ->
  target_endpoint_arn:string prop ->
  compute_config:compute_config list ->
  unit ->
  aws_dms_replication_config

val yojson_of_aws_dms_replication_config :
  aws_dms_replication_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  replication_config_identifier : string prop;
  replication_settings : string prop;
  replication_type : string prop;
  resource_identifier : string prop;
  source_endpoint_arn : string prop;
  start_replication : bool prop;
  supplemental_settings : string prop;
  table_mappings : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_endpoint_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?replication_settings:string prop ->
  ?resource_identifier:string prop ->
  ?start_replication:bool prop ->
  ?supplemental_settings:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  replication_config_identifier:string prop ->
  replication_type:string prop ->
  source_endpoint_arn:string prop ->
  table_mappings:string prop ->
  target_endpoint_arn:string prop ->
  compute_config:compute_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?replication_settings:string prop ->
  ?resource_identifier:string prop ->
  ?start_replication:bool prop ->
  ?supplemental_settings:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  replication_config_identifier:string prop ->
  replication_type:string prop ->
  source_endpoint_arn:string prop ->
  table_mappings:string prop ->
  target_endpoint_arn:string prop ->
  compute_config:compute_config list ->
  string ->
  t Tf_core.resource
