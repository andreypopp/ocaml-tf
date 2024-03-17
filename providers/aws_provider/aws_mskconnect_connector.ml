(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_mskconnect_connector__capacity__autoscaling__scale_in_policy = {
  cpu_utilization_percentage : float option; [@option]
      (** cpu_utilization_percentage *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__capacity__autoscaling__scale_in_policy *)

type aws_mskconnect_connector__capacity__autoscaling__scale_out_policy = {
  cpu_utilization_percentage : float option; [@option]
      (** cpu_utilization_percentage *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__capacity__autoscaling__scale_out_policy *)

type aws_mskconnect_connector__capacity__autoscaling = {
  max_worker_count : float;  (** max_worker_count *)
  mcu_count : float option; [@option]  (** mcu_count *)
  min_worker_count : float;  (** min_worker_count *)
  scale_in_policy :
    aws_mskconnect_connector__capacity__autoscaling__scale_in_policy
    list;
  scale_out_policy :
    aws_mskconnect_connector__capacity__autoscaling__scale_out_policy
    list;
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__capacity__autoscaling *)

type aws_mskconnect_connector__capacity__provisioned_capacity = {
  mcu_count : float option; [@option]  (** mcu_count *)
  worker_count : float;  (** worker_count *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__capacity__provisioned_capacity *)

type aws_mskconnect_connector__capacity = {
  autoscaling : aws_mskconnect_connector__capacity__autoscaling list;
  provisioned_capacity :
    aws_mskconnect_connector__capacity__provisioned_capacity list;
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__capacity *)

type aws_mskconnect_connector__kafka_cluster__apache_kafka_cluster__vpc = {
  security_groups : string list;  (** security_groups *)
  subnets : string list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__kafka_cluster__apache_kafka_cluster__vpc *)

type aws_mskconnect_connector__kafka_cluster__apache_kafka_cluster = {
  bootstrap_servers : string;  (** bootstrap_servers *)
  vpc :
    aws_mskconnect_connector__kafka_cluster__apache_kafka_cluster__vpc
    list;
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__kafka_cluster__apache_kafka_cluster *)

type aws_mskconnect_connector__kafka_cluster = {
  apache_kafka_cluster :
    aws_mskconnect_connector__kafka_cluster__apache_kafka_cluster
    list;
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__kafka_cluster *)

type aws_mskconnect_connector__kafka_cluster_client_authentication = {
  authentication_type : string option; [@option]
      (** authentication_type *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__kafka_cluster_client_authentication *)

type aws_mskconnect_connector__kafka_cluster_encryption_in_transit = {
  encryption_type : string option; [@option]  (** encryption_type *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__kafka_cluster_encryption_in_transit *)

type aws_mskconnect_connector__log_delivery__worker_log_delivery__cloudwatch_logs = {
  enabled : bool;  (** enabled *)
  log_group : string option; [@option]  (** log_group *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__log_delivery__worker_log_delivery__cloudwatch_logs *)

type aws_mskconnect_connector__log_delivery__worker_log_delivery__firehose = {
  delivery_stream : string option; [@option]  (** delivery_stream *)
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__log_delivery__worker_log_delivery__firehose *)

type aws_mskconnect_connector__log_delivery__worker_log_delivery__s3 = {
  bucket : string option; [@option]  (** bucket *)
  enabled : bool;  (** enabled *)
  prefix : string option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__log_delivery__worker_log_delivery__s3 *)

type aws_mskconnect_connector__log_delivery__worker_log_delivery = {
  cloudwatch_logs :
    aws_mskconnect_connector__log_delivery__worker_log_delivery__cloudwatch_logs
    list;
  firehose :
    aws_mskconnect_connector__log_delivery__worker_log_delivery__firehose
    list;
  s3 :
    aws_mskconnect_connector__log_delivery__worker_log_delivery__s3
    list;
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__log_delivery__worker_log_delivery *)

type aws_mskconnect_connector__log_delivery = {
  worker_log_delivery :
    aws_mskconnect_connector__log_delivery__worker_log_delivery list;
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__log_delivery *)

type aws_mskconnect_connector__plugin__custom_plugin = {
  arn : string;  (** arn *)
  revision : float;  (** revision *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__plugin__custom_plugin *)

type aws_mskconnect_connector__plugin = {
  custom_plugin :
    aws_mskconnect_connector__plugin__custom_plugin list;
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__plugin *)

type aws_mskconnect_connector__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__timeouts *)

type aws_mskconnect_connector__worker_configuration = {
  arn : string;  (** arn *)
  revision : float;  (** revision *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__worker_configuration *)

type aws_mskconnect_connector = {
  connector_configuration : (string * string) list;
      (** connector_configuration *)
  description : string option; [@option]  (** description *)
  kafkaconnect_version : string;  (** kafkaconnect_version *)
  name : string;  (** name *)
  service_execution_role_arn : string;
      (** service_execution_role_arn *)
  capacity : aws_mskconnect_connector__capacity list;
  kafka_cluster : aws_mskconnect_connector__kafka_cluster list;
  kafka_cluster_client_authentication :
    aws_mskconnect_connector__kafka_cluster_client_authentication
    list;
  kafka_cluster_encryption_in_transit :
    aws_mskconnect_connector__kafka_cluster_encryption_in_transit
    list;
  log_delivery : aws_mskconnect_connector__log_delivery list;
  plugin : aws_mskconnect_connector__plugin list;
  timeouts : aws_mskconnect_connector__timeouts option;
  worker_configuration :
    aws_mskconnect_connector__worker_configuration list;
}
[@@deriving yojson_of]
(** aws_mskconnect_connector *)

let aws_mskconnect_connector ?description ?timeouts
    ~connector_configuration ~kafkaconnect_version ~name
    ~service_execution_role_arn ~capacity ~kafka_cluster
    ~kafka_cluster_client_authentication
    ~kafka_cluster_encryption_in_transit ~log_delivery ~plugin
    ~worker_configuration __resource_id =
  let __resource_type = "aws_mskconnect_connector" in
  let __resource =
    {
      connector_configuration;
      description;
      kafkaconnect_version;
      name;
      service_execution_role_arn;
      capacity;
      kafka_cluster;
      kafka_cluster_client_authentication;
      kafka_cluster_encryption_in_transit;
      log_delivery;
      plugin;
      timeouts;
      worker_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mskconnect_connector __resource);
  ()
