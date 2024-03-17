(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_replicator__kafka_cluster__amazon_msk_cluster
type aws_msk_replicator__kafka_cluster__vpc_config
type aws_msk_replicator__kafka_cluster

type aws_msk_replicator__replication_info_list__consumer_group_replication

type aws_msk_replicator__replication_info_list__topic_replication
type aws_msk_replicator__replication_info_list
type aws_msk_replicator__timeouts
type aws_msk_replicator

type t = private {
  arn : string prop;
  current_version : string prop;
  description : string prop;
  id : string prop;
  replicator_name : string prop;
  service_execution_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_msk_replicator :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_msk_replicator__timeouts ->
  replicator_name:string prop ->
  service_execution_role_arn:string prop ->
  kafka_cluster:aws_msk_replicator__kafka_cluster list ->
  replication_info_list:
    aws_msk_replicator__replication_info_list list ->
  string ->
  t
