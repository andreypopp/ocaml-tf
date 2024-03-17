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

val aws_msk_replicator :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_msk_replicator__timeouts ->
  replicator_name:string ->
  service_execution_role_arn:string ->
  kafka_cluster:aws_msk_replicator__kafka_cluster list ->
  replication_info_list:
    aws_msk_replicator__replication_info_list list ->
  string ->
  unit
