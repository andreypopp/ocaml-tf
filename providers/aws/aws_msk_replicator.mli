(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type kafka_cluster__amazon_msk_cluster

val kafka_cluster__amazon_msk_cluster :
  msk_cluster_arn:string prop ->
  unit ->
  kafka_cluster__amazon_msk_cluster

type kafka_cluster__vpc_config

val kafka_cluster__vpc_config :
  ?security_groups_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  kafka_cluster__vpc_config

type kafka_cluster

val kafka_cluster :
  amazon_msk_cluster:kafka_cluster__amazon_msk_cluster list ->
  vpc_config:kafka_cluster__vpc_config list ->
  unit ->
  kafka_cluster

type replication_info_list__consumer_group_replication

val replication_info_list__consumer_group_replication :
  ?consumer_groups_to_exclude:string prop list ->
  ?detect_and_copy_new_consumer_groups:bool prop ->
  ?synchronise_consumer_group_offsets:bool prop ->
  consumer_groups_to_replicate:string prop list ->
  unit ->
  replication_info_list__consumer_group_replication

type replication_info_list__topic_replication

val replication_info_list__topic_replication :
  ?copy_access_control_lists_for_topics:bool prop ->
  ?copy_topic_configurations:bool prop ->
  ?detect_and_copy_new_topics:bool prop ->
  ?topics_to_exclude:string prop list ->
  topics_to_replicate:string prop list ->
  unit ->
  replication_info_list__topic_replication

type replication_info_list

val replication_info_list :
  source_kafka_cluster_arn:string prop ->
  target_compression_type:string prop ->
  target_kafka_cluster_arn:string prop ->
  consumer_group_replication:
    replication_info_list__consumer_group_replication list ->
  topic_replication:replication_info_list__topic_replication list ->
  unit ->
  replication_info_list

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_msk_replicator

val aws_msk_replicator :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  replicator_name:string prop ->
  service_execution_role_arn:string prop ->
  kafka_cluster:kafka_cluster list ->
  replication_info_list:replication_info_list list ->
  unit ->
  aws_msk_replicator

val yojson_of_aws_msk_replicator : aws_msk_replicator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  current_version : string prop;
  description : string prop;
  id : string prop;
  replicator_name : string prop;
  service_execution_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  replicator_name:string prop ->
  service_execution_role_arn:string prop ->
  kafka_cluster:kafka_cluster list ->
  replication_info_list:replication_info_list list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  replicator_name:string prop ->
  service_execution_role_arn:string prop ->
  kafka_cluster:kafka_cluster list ->
  replication_info_list:replication_info_list list ->
  string ->
  t Tf_core.resource
