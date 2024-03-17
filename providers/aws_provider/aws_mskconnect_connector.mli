(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_mskconnect_connector__capacity__autoscaling__scale_in_policy
type aws_mskconnect_connector__capacity__autoscaling__scale_out_policy
type aws_mskconnect_connector__capacity__autoscaling
type aws_mskconnect_connector__capacity__provisioned_capacity
type aws_mskconnect_connector__capacity

type aws_mskconnect_connector__kafka_cluster__apache_kafka_cluster__vpc

type aws_mskconnect_connector__kafka_cluster__apache_kafka_cluster
type aws_mskconnect_connector__kafka_cluster
type aws_mskconnect_connector__kafka_cluster_client_authentication
type aws_mskconnect_connector__kafka_cluster_encryption_in_transit

type aws_mskconnect_connector__log_delivery__worker_log_delivery__cloudwatch_logs

type aws_mskconnect_connector__log_delivery__worker_log_delivery__firehose

type aws_mskconnect_connector__log_delivery__worker_log_delivery__s3
type aws_mskconnect_connector__log_delivery__worker_log_delivery
type aws_mskconnect_connector__log_delivery
type aws_mskconnect_connector__plugin__custom_plugin
type aws_mskconnect_connector__plugin
type aws_mskconnect_connector__timeouts
type aws_mskconnect_connector__worker_configuration
type aws_mskconnect_connector

val aws_mskconnect_connector :
  ?description:string ->
  ?timeouts:aws_mskconnect_connector__timeouts ->
  connector_configuration:(string * string) list ->
  kafkaconnect_version:string ->
  name:string ->
  service_execution_role_arn:string ->
  capacity:aws_mskconnect_connector__capacity list ->
  kafka_cluster:aws_mskconnect_connector__kafka_cluster list ->
  kafka_cluster_client_authentication:
    aws_mskconnect_connector__kafka_cluster_client_authentication
    list ->
  kafka_cluster_encryption_in_transit:
    aws_mskconnect_connector__kafka_cluster_encryption_in_transit
    list ->
  log_delivery:aws_mskconnect_connector__log_delivery list ->
  plugin:aws_mskconnect_connector__plugin list ->
  worker_configuration:
    aws_mskconnect_connector__worker_configuration list ->
  string ->
  unit
