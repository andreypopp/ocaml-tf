(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type broker_node_group_info__connectivity_info__public_access

val broker_node_group_info__connectivity_info__public_access :
  ?type_:string prop ->
  unit ->
  broker_node_group_info__connectivity_info__public_access

type broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl

val broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl :
  ?iam:bool prop ->
  ?scram:bool prop ->
  unit ->
  broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl

type broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication

val broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication :
  ?tls:bool prop ->
  ?sasl:
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    list ->
  unit ->
  broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication

type broker_node_group_info__connectivity_info__vpc_connectivity

val broker_node_group_info__connectivity_info__vpc_connectivity :
  ?client_authentication:
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    list ->
  unit ->
  broker_node_group_info__connectivity_info__vpc_connectivity

type broker_node_group_info__connectivity_info

val broker_node_group_info__connectivity_info :
  ?public_access:
    broker_node_group_info__connectivity_info__public_access list ->
  ?vpc_connectivity:
    broker_node_group_info__connectivity_info__vpc_connectivity list ->
  unit ->
  broker_node_group_info__connectivity_info

type broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput

val broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput :
  ?enabled:bool prop ->
  ?volume_throughput:float prop ->
  unit ->
  broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput

type broker_node_group_info__storage_info__ebs_storage_info

val broker_node_group_info__storage_info__ebs_storage_info :
  ?volume_size:float prop ->
  ?provisioned_throughput:
    broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    list ->
  unit ->
  broker_node_group_info__storage_info__ebs_storage_info

type broker_node_group_info__storage_info

val broker_node_group_info__storage_info :
  ?ebs_storage_info:
    broker_node_group_info__storage_info__ebs_storage_info list ->
  unit ->
  broker_node_group_info__storage_info

type broker_node_group_info

val broker_node_group_info :
  ?az_distribution:string prop ->
  ?connectivity_info:broker_node_group_info__connectivity_info list ->
  ?storage_info:broker_node_group_info__storage_info list ->
  client_subnets:string prop list ->
  instance_type:string prop ->
  security_groups:string prop list ->
  unit ->
  broker_node_group_info

type client_authentication__sasl

val client_authentication__sasl :
  ?iam:bool prop ->
  ?scram:bool prop ->
  unit ->
  client_authentication__sasl

type client_authentication__tls

val client_authentication__tls :
  ?certificate_authority_arns:string prop list ->
  unit ->
  client_authentication__tls

type client_authentication

val client_authentication :
  ?unauthenticated:bool prop ->
  ?sasl:client_authentication__sasl list ->
  ?tls:client_authentication__tls list ->
  unit ->
  client_authentication

type configuration_info

val configuration_info :
  arn:string prop ->
  revision:float prop ->
  unit ->
  configuration_info

type encryption_info__encryption_in_transit

val encryption_info__encryption_in_transit :
  ?client_broker:string prop ->
  ?in_cluster:bool prop ->
  unit ->
  encryption_info__encryption_in_transit

type encryption_info

val encryption_info :
  ?encryption_at_rest_kms_key_arn:string prop ->
  ?encryption_in_transit:encryption_info__encryption_in_transit list ->
  unit ->
  encryption_info

type logging_info__broker_logs__cloudwatch_logs

val logging_info__broker_logs__cloudwatch_logs :
  ?log_group:string prop ->
  enabled:bool prop ->
  unit ->
  logging_info__broker_logs__cloudwatch_logs

type logging_info__broker_logs__firehose

val logging_info__broker_logs__firehose :
  ?delivery_stream:string prop ->
  enabled:bool prop ->
  unit ->
  logging_info__broker_logs__firehose

type logging_info__broker_logs__s3

val logging_info__broker_logs__s3 :
  ?bucket:string prop ->
  ?prefix:string prop ->
  enabled:bool prop ->
  unit ->
  logging_info__broker_logs__s3

type logging_info__broker_logs

val logging_info__broker_logs :
  ?cloudwatch_logs:logging_info__broker_logs__cloudwatch_logs list ->
  ?firehose:logging_info__broker_logs__firehose list ->
  ?s3:logging_info__broker_logs__s3 list ->
  unit ->
  logging_info__broker_logs

type logging_info

val logging_info :
  broker_logs:logging_info__broker_logs list -> unit -> logging_info

type open_monitoring__prometheus__jmx_exporter

val open_monitoring__prometheus__jmx_exporter :
  enabled_in_broker:bool prop ->
  unit ->
  open_monitoring__prometheus__jmx_exporter

type open_monitoring__prometheus__node_exporter

val open_monitoring__prometheus__node_exporter :
  enabled_in_broker:bool prop ->
  unit ->
  open_monitoring__prometheus__node_exporter

type open_monitoring__prometheus

val open_monitoring__prometheus :
  ?jmx_exporter:open_monitoring__prometheus__jmx_exporter list ->
  ?node_exporter:open_monitoring__prometheus__node_exporter list ->
  unit ->
  open_monitoring__prometheus

type open_monitoring

val open_monitoring :
  prometheus:open_monitoring__prometheus list ->
  unit ->
  open_monitoring

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_msk_cluster

val aws_msk_cluster :
  ?enhanced_monitoring:string prop ->
  ?id:string prop ->
  ?storage_mode:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?client_authentication:client_authentication list ->
  ?configuration_info:configuration_info list ->
  ?encryption_info:encryption_info list ->
  ?logging_info:logging_info list ->
  ?open_monitoring:open_monitoring list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  kafka_version:string prop ->
  number_of_broker_nodes:float prop ->
  broker_node_group_info:broker_node_group_info list ->
  unit ->
  aws_msk_cluster

val yojson_of_aws_msk_cluster : aws_msk_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  zookeeper_connect_string : string prop;
  zookeeper_connect_string_tls : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enhanced_monitoring:string prop ->
  ?id:string prop ->
  ?storage_mode:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?client_authentication:client_authentication list ->
  ?configuration_info:configuration_info list ->
  ?encryption_info:encryption_info list ->
  ?logging_info:logging_info list ->
  ?open_monitoring:open_monitoring list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  kafka_version:string prop ->
  number_of_broker_nodes:float prop ->
  broker_node_group_info:broker_node_group_info list ->
  string ->
  t

val make :
  ?enhanced_monitoring:string prop ->
  ?id:string prop ->
  ?storage_mode:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?client_authentication:client_authentication list ->
  ?configuration_info:configuration_info list ->
  ?encryption_info:encryption_info list ->
  ?logging_info:logging_info list ->
  ?open_monitoring:open_monitoring list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  kafka_version:string prop ->
  number_of_broker_nodes:float prop ->
  broker_node_group_info:broker_node_group_info list ->
  string ->
  t Tf_core.resource
