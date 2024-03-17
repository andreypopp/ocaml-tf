(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_mskconnect_connector__capacity__autoscaling__scale_in_policy = {
  cpu_utilization_percentage : float prop option; [@option]
      (** cpu_utilization_percentage *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__capacity__autoscaling__scale_in_policy *)

type aws_mskconnect_connector__capacity__autoscaling__scale_out_policy = {
  cpu_utilization_percentage : float prop option; [@option]
      (** cpu_utilization_percentage *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__capacity__autoscaling__scale_out_policy *)

type aws_mskconnect_connector__capacity__autoscaling = {
  max_worker_count : float prop;  (** max_worker_count *)
  mcu_count : float prop option; [@option]  (** mcu_count *)
  min_worker_count : float prop;  (** min_worker_count *)
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
  mcu_count : float prop option; [@option]  (** mcu_count *)
  worker_count : float prop;  (** worker_count *)
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
  security_groups : string prop list;  (** security_groups *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__kafka_cluster__apache_kafka_cluster__vpc *)

type aws_mskconnect_connector__kafka_cluster__apache_kafka_cluster = {
  bootstrap_servers : string prop;  (** bootstrap_servers *)
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
  authentication_type : string prop option; [@option]
      (** authentication_type *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__kafka_cluster_client_authentication *)

type aws_mskconnect_connector__kafka_cluster_encryption_in_transit = {
  encryption_type : string prop option; [@option]
      (** encryption_type *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__kafka_cluster_encryption_in_transit *)

type aws_mskconnect_connector__log_delivery__worker_log_delivery__cloudwatch_logs = {
  enabled : bool prop;  (** enabled *)
  log_group : string prop option; [@option]  (** log_group *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__log_delivery__worker_log_delivery__cloudwatch_logs *)

type aws_mskconnect_connector__log_delivery__worker_log_delivery__firehose = {
  delivery_stream : string prop option; [@option]
      (** delivery_stream *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__log_delivery__worker_log_delivery__firehose *)

type aws_mskconnect_connector__log_delivery__worker_log_delivery__s3 = {
  bucket : string prop option; [@option]  (** bucket *)
  enabled : bool prop;  (** enabled *)
  prefix : string prop option; [@option]  (** prefix *)
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
  arn : string prop;  (** arn *)
  revision : float prop;  (** revision *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__timeouts *)

type aws_mskconnect_connector__worker_configuration = {
  arn : string prop;  (** arn *)
  revision : float prop;  (** revision *)
}
[@@deriving yojson_of]
(** aws_mskconnect_connector__worker_configuration *)

type aws_mskconnect_connector = {
  connector_configuration : (string * string prop) list;
      (** connector_configuration *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kafkaconnect_version : string prop;  (** kafkaconnect_version *)
  name : string prop;  (** name *)
  service_execution_role_arn : string prop;
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

type t = {
  arn : string prop;
  connector_configuration : (string * string) list prop;
  description : string prop;
  id : string prop;
  kafkaconnect_version : string prop;
  name : string prop;
  service_execution_role_arn : string prop;
  version : string prop;
}

let aws_mskconnect_connector ?description ?id ?timeouts
    ~connector_configuration ~kafkaconnect_version ~name
    ~service_execution_role_arn ~capacity ~kafka_cluster
    ~kafka_cluster_client_authentication
    ~kafka_cluster_encryption_in_transit ~log_delivery ~plugin
    ~worker_configuration __resource_id =
  let __resource_type = "aws_mskconnect_connector" in
  let __resource =
    ({
       connector_configuration;
       description;
       id;
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
      : aws_mskconnect_connector)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mskconnect_connector __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       connector_configuration =
         Prop.computed __resource_type __resource_id
           "connector_configuration";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kafkaconnect_version =
         Prop.computed __resource_type __resource_id
           "kafkaconnect_version";
       name = Prop.computed __resource_type __resource_id "name";
       service_execution_role_arn =
         Prop.computed __resource_type __resource_id
           "service_execution_role_arn";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
