(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type capacity__autoscaling__scale_in_policy

val capacity__autoscaling__scale_in_policy :
  ?cpu_utilization_percentage:float prop ->
  unit ->
  capacity__autoscaling__scale_in_policy

type capacity__autoscaling__scale_out_policy

val capacity__autoscaling__scale_out_policy :
  ?cpu_utilization_percentage:float prop ->
  unit ->
  capacity__autoscaling__scale_out_policy

type capacity__autoscaling

val capacity__autoscaling :
  ?mcu_count:float prop ->
  max_worker_count:float prop ->
  min_worker_count:float prop ->
  scale_in_policy:capacity__autoscaling__scale_in_policy list ->
  scale_out_policy:capacity__autoscaling__scale_out_policy list ->
  unit ->
  capacity__autoscaling

type capacity__provisioned_capacity

val capacity__provisioned_capacity :
  ?mcu_count:float prop ->
  worker_count:float prop ->
  unit ->
  capacity__provisioned_capacity

type capacity

val capacity :
  autoscaling:capacity__autoscaling list ->
  provisioned_capacity:capacity__provisioned_capacity list ->
  unit ->
  capacity

type kafka_cluster__apache_kafka_cluster__vpc

val kafka_cluster__apache_kafka_cluster__vpc :
  security_groups:string prop list ->
  subnets:string prop list ->
  unit ->
  kafka_cluster__apache_kafka_cluster__vpc

type kafka_cluster__apache_kafka_cluster

val kafka_cluster__apache_kafka_cluster :
  bootstrap_servers:string prop ->
  vpc:kafka_cluster__apache_kafka_cluster__vpc list ->
  unit ->
  kafka_cluster__apache_kafka_cluster

type kafka_cluster

val kafka_cluster :
  apache_kafka_cluster:kafka_cluster__apache_kafka_cluster list ->
  unit ->
  kafka_cluster

type kafka_cluster_client_authentication

val kafka_cluster_client_authentication :
  ?authentication_type:string prop ->
  unit ->
  kafka_cluster_client_authentication

type kafka_cluster_encryption_in_transit

val kafka_cluster_encryption_in_transit :
  ?encryption_type:string prop ->
  unit ->
  kafka_cluster_encryption_in_transit

type log_delivery__worker_log_delivery__cloudwatch_logs

val log_delivery__worker_log_delivery__cloudwatch_logs :
  ?log_group:string prop ->
  enabled:bool prop ->
  unit ->
  log_delivery__worker_log_delivery__cloudwatch_logs

type log_delivery__worker_log_delivery__firehose

val log_delivery__worker_log_delivery__firehose :
  ?delivery_stream:string prop ->
  enabled:bool prop ->
  unit ->
  log_delivery__worker_log_delivery__firehose

type log_delivery__worker_log_delivery__s3

val log_delivery__worker_log_delivery__s3 :
  ?bucket:string prop ->
  ?prefix:string prop ->
  enabled:bool prop ->
  unit ->
  log_delivery__worker_log_delivery__s3

type log_delivery__worker_log_delivery

val log_delivery__worker_log_delivery :
  cloudwatch_logs:
    log_delivery__worker_log_delivery__cloudwatch_logs list ->
  firehose:log_delivery__worker_log_delivery__firehose list ->
  s3:log_delivery__worker_log_delivery__s3 list ->
  unit ->
  log_delivery__worker_log_delivery

type log_delivery

val log_delivery :
  worker_log_delivery:log_delivery__worker_log_delivery list ->
  unit ->
  log_delivery

type plugin__custom_plugin

val plugin__custom_plugin :
  arn:string prop ->
  revision:float prop ->
  unit ->
  plugin__custom_plugin

type plugin

val plugin :
  custom_plugin:plugin__custom_plugin list -> unit -> plugin

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type worker_configuration

val worker_configuration :
  arn:string prop ->
  revision:float prop ->
  unit ->
  worker_configuration

type aws_mskconnect_connector

val aws_mskconnect_connector :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connector_configuration:(string * string prop) list ->
  kafkaconnect_version:string prop ->
  name:string prop ->
  service_execution_role_arn:string prop ->
  capacity:capacity list ->
  kafka_cluster:kafka_cluster list ->
  kafka_cluster_client_authentication:
    kafka_cluster_client_authentication list ->
  kafka_cluster_encryption_in_transit:
    kafka_cluster_encryption_in_transit list ->
  log_delivery:log_delivery list ->
  plugin:plugin list ->
  worker_configuration:worker_configuration list ->
  unit ->
  aws_mskconnect_connector

val yojson_of_aws_mskconnect_connector :
  aws_mskconnect_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  connector_configuration : (string * string) list prop;
  description : string prop;
  id : string prop;
  kafkaconnect_version : string prop;
  name : string prop;
  service_execution_role_arn : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connector_configuration:(string * string prop) list ->
  kafkaconnect_version:string prop ->
  name:string prop ->
  service_execution_role_arn:string prop ->
  capacity:capacity list ->
  kafka_cluster:kafka_cluster list ->
  kafka_cluster_client_authentication:
    kafka_cluster_client_authentication list ->
  kafka_cluster_encryption_in_transit:
    kafka_cluster_encryption_in_transit list ->
  log_delivery:log_delivery list ->
  plugin:plugin list ->
  worker_configuration:worker_configuration list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connector_configuration:(string * string prop) list ->
  kafkaconnect_version:string prop ->
  name:string prop ->
  service_execution_role_arn:string prop ->
  capacity:capacity list ->
  kafka_cluster:kafka_cluster list ->
  kafka_cluster_client_authentication:
    kafka_cluster_client_authentication list ->
  kafka_cluster_encryption_in_transit:
    kafka_cluster_encryption_in_transit list ->
  log_delivery:log_delivery list ->
  plugin:plugin list ->
  worker_configuration:worker_configuration list ->
  string ->
  t Tf_core.resource
