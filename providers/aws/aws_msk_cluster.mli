(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_cluster__broker_node_group_info__connectivity_info__public_access

type aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl

type aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication

type aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity

type aws_msk_cluster__broker_node_group_info__connectivity_info

type aws_msk_cluster__broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput

type aws_msk_cluster__broker_node_group_info__storage_info__ebs_storage_info

type aws_msk_cluster__broker_node_group_info__storage_info
type aws_msk_cluster__broker_node_group_info
type aws_msk_cluster__client_authentication__sasl
type aws_msk_cluster__client_authentication__tls
type aws_msk_cluster__client_authentication
type aws_msk_cluster__configuration_info
type aws_msk_cluster__encryption_info__encryption_in_transit
type aws_msk_cluster__encryption_info
type aws_msk_cluster__logging_info__broker_logs__cloudwatch_logs
type aws_msk_cluster__logging_info__broker_logs__firehose
type aws_msk_cluster__logging_info__broker_logs__s3
type aws_msk_cluster__logging_info__broker_logs
type aws_msk_cluster__logging_info
type aws_msk_cluster__open_monitoring__prometheus__jmx_exporter
type aws_msk_cluster__open_monitoring__prometheus__node_exporter
type aws_msk_cluster__open_monitoring__prometheus
type aws_msk_cluster__open_monitoring
type aws_msk_cluster__timeouts
type aws_msk_cluster

type t = private {
  arn : string prop;
  bootstrap_brokers : string prop;
  bootstrap_brokers_public_sasl_iam : string prop;
  bootstrap_brokers_public_sasl_scram : string prop;
  bootstrap_brokers_public_tls : string prop;
  bootstrap_brokers_sasl_iam : string prop;
  bootstrap_brokers_sasl_scram : string prop;
  bootstrap_brokers_tls : string prop;
  bootstrap_brokers_vpc_connectivity_sasl_iam : string prop;
  bootstrap_brokers_vpc_connectivity_sasl_scram : string prop;
  bootstrap_brokers_vpc_connectivity_tls : string prop;
  cluster_name : string prop;
  cluster_uuid : string prop;
  current_version : string prop;
  enhanced_monitoring : string prop;
  id : string prop;
  kafka_version : string prop;
  number_of_broker_nodes : float prop;
  storage_mode : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  zookeeper_connect_string : string prop;
  zookeeper_connect_string_tls : string prop;
}

val aws_msk_cluster :
  ?enhanced_monitoring:string prop ->
  ?id:string prop ->
  ?storage_mode:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_msk_cluster__timeouts ->
  cluster_name:string prop ->
  kafka_version:string prop ->
  number_of_broker_nodes:float prop ->
  broker_node_group_info:aws_msk_cluster__broker_node_group_info list ->
  client_authentication:aws_msk_cluster__client_authentication list ->
  configuration_info:aws_msk_cluster__configuration_info list ->
  encryption_info:aws_msk_cluster__encryption_info list ->
  logging_info:aws_msk_cluster__logging_info list ->
  open_monitoring:aws_msk_cluster__open_monitoring list ->
  string ->
  t
