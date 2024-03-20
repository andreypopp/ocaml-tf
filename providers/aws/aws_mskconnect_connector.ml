(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type capacity__autoscaling__scale_in_policy = {
  cpu_utilization_percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity__autoscaling__scale_in_policy) -> ()

let yojson_of_capacity__autoscaling__scale_in_policy =
  (function
   | { cpu_utilization_percentage = v_cpu_utilization_percentage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cpu_utilization_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_utilization_percentage", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : capacity__autoscaling__scale_in_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity__autoscaling__scale_in_policy

[@@@deriving.end]

type capacity__autoscaling__scale_out_policy = {
  cpu_utilization_percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity__autoscaling__scale_out_policy) -> ()

let yojson_of_capacity__autoscaling__scale_out_policy =
  (function
   | { cpu_utilization_percentage = v_cpu_utilization_percentage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cpu_utilization_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu_utilization_percentage", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : capacity__autoscaling__scale_out_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity__autoscaling__scale_out_policy

[@@@deriving.end]

type capacity__autoscaling = {
  max_worker_count : float prop;
  mcu_count : float prop option; [@option]
  min_worker_count : float prop;
  scale_in_policy : capacity__autoscaling__scale_in_policy list;
  scale_out_policy : capacity__autoscaling__scale_out_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity__autoscaling) -> ()

let yojson_of_capacity__autoscaling =
  (function
   | {
       max_worker_count = v_max_worker_count;
       mcu_count = v_mcu_count;
       min_worker_count = v_min_worker_count;
       scale_in_policy = v_scale_in_policy;
       scale_out_policy = v_scale_out_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_capacity__autoscaling__scale_out_policy
             v_scale_out_policy
         in
         ("scale_out_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_capacity__autoscaling__scale_in_policy
             v_scale_in_policy
         in
         ("scale_in_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_min_worker_count
         in
         ("min_worker_count", arg) :: bnds
       in
       let bnds =
         match v_mcu_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mcu_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_worker_count
         in
         ("max_worker_count", arg) :: bnds
       in
       `Assoc bnds
    : capacity__autoscaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity__autoscaling

[@@@deriving.end]

type capacity__provisioned_capacity = {
  mcu_count : float prop option; [@option]
  worker_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity__provisioned_capacity) -> ()

let yojson_of_capacity__provisioned_capacity =
  (function
   | { mcu_count = v_mcu_count; worker_count = v_worker_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_worker_count in
         ("worker_count", arg) :: bnds
       in
       let bnds =
         match v_mcu_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mcu_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : capacity__provisioned_capacity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity__provisioned_capacity

[@@@deriving.end]

type capacity = {
  autoscaling : capacity__autoscaling list;
  provisioned_capacity : capacity__provisioned_capacity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity) -> ()

let yojson_of_capacity =
  (function
   | {
       autoscaling = v_autoscaling;
       provisioned_capacity = v_provisioned_capacity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_capacity__provisioned_capacity
             v_provisioned_capacity
         in
         ("provisioned_capacity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_capacity__autoscaling
             v_autoscaling
         in
         ("autoscaling", arg) :: bnds
       in
       `Assoc bnds
    : capacity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity

[@@@deriving.end]

type kafka_cluster__apache_kafka_cluster__vpc = {
  security_groups : string prop list;
  subnets : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka_cluster__apache_kafka_cluster__vpc) -> ()

let yojson_of_kafka_cluster__apache_kafka_cluster__vpc =
  (function
   | { security_groups = v_security_groups; subnets = v_subnets } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_subnets
         in
         ("subnets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_groups
         in
         ("security_groups", arg) :: bnds
       in
       `Assoc bnds
    : kafka_cluster__apache_kafka_cluster__vpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka_cluster__apache_kafka_cluster__vpc

[@@@deriving.end]

type kafka_cluster__apache_kafka_cluster = {
  bootstrap_servers : string prop;
  vpc : kafka_cluster__apache_kafka_cluster__vpc list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka_cluster__apache_kafka_cluster) -> ()

let yojson_of_kafka_cluster__apache_kafka_cluster =
  (function
   | { bootstrap_servers = v_bootstrap_servers; vpc = v_vpc } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_kafka_cluster__apache_kafka_cluster__vpc v_vpc
         in
         ("vpc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_bootstrap_servers
         in
         ("bootstrap_servers", arg) :: bnds
       in
       `Assoc bnds
    : kafka_cluster__apache_kafka_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka_cluster__apache_kafka_cluster

[@@@deriving.end]

type kafka_cluster = {
  apache_kafka_cluster : kafka_cluster__apache_kafka_cluster list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka_cluster) -> ()

let yojson_of_kafka_cluster =
  (function
   | { apache_kafka_cluster = v_apache_kafka_cluster } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_kafka_cluster__apache_kafka_cluster
             v_apache_kafka_cluster
         in
         ("apache_kafka_cluster", arg) :: bnds
       in
       `Assoc bnds
    : kafka_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka_cluster

[@@@deriving.end]

type kafka_cluster_client_authentication = {
  authentication_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka_cluster_client_authentication) -> ()

let yojson_of_kafka_cluster_client_authentication =
  (function
   | { authentication_type = v_authentication_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_authentication_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kafka_cluster_client_authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka_cluster_client_authentication

[@@@deriving.end]

type kafka_cluster_encryption_in_transit = {
  encryption_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka_cluster_encryption_in_transit) -> ()

let yojson_of_kafka_cluster_encryption_in_transit =
  (function
   | { encryption_type = v_encryption_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_encryption_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kafka_cluster_encryption_in_transit ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka_cluster_encryption_in_transit

[@@@deriving.end]

type log_delivery__worker_log_delivery__cloudwatch_logs = {
  enabled : bool prop;
  log_group : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : log_delivery__worker_log_delivery__cloudwatch_logs) -> ()

let yojson_of_log_delivery__worker_log_delivery__cloudwatch_logs =
  (function
   | { enabled = v_enabled; log_group = v_log_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : log_delivery__worker_log_delivery__cloudwatch_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_delivery__worker_log_delivery__cloudwatch_logs

[@@@deriving.end]

type log_delivery__worker_log_delivery__firehose = {
  delivery_stream : string prop option; [@option]
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_delivery__worker_log_delivery__firehose) -> ()

let yojson_of_log_delivery__worker_log_delivery__firehose =
  (function
   | { delivery_stream = v_delivery_stream; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_delivery_stream with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delivery_stream", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : log_delivery__worker_log_delivery__firehose ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_delivery__worker_log_delivery__firehose

[@@@deriving.end]

type log_delivery__worker_log_delivery__s3 = {
  bucket : string prop option; [@option]
  enabled : bool prop;
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_delivery__worker_log_delivery__s3) -> ()

let yojson_of_log_delivery__worker_log_delivery__s3 =
  (function
   | { bucket = v_bucket; enabled = v_enabled; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : log_delivery__worker_log_delivery__s3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_delivery__worker_log_delivery__s3

[@@@deriving.end]

type log_delivery__worker_log_delivery = {
  cloudwatch_logs :
    log_delivery__worker_log_delivery__cloudwatch_logs list;
  firehose : log_delivery__worker_log_delivery__firehose list;
  s3 : log_delivery__worker_log_delivery__s3 list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_delivery__worker_log_delivery) -> ()

let yojson_of_log_delivery__worker_log_delivery =
  (function
   | {
       cloudwatch_logs = v_cloudwatch_logs;
       firehose = v_firehose;
       s3 = v_s3;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_log_delivery__worker_log_delivery__s3 v_s3
         in
         ("s3", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_log_delivery__worker_log_delivery__firehose
             v_firehose
         in
         ("firehose", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_log_delivery__worker_log_delivery__cloudwatch_logs
             v_cloudwatch_logs
         in
         ("cloudwatch_logs", arg) :: bnds
       in
       `Assoc bnds
    : log_delivery__worker_log_delivery ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_delivery__worker_log_delivery

[@@@deriving.end]

type log_delivery = {
  worker_log_delivery : log_delivery__worker_log_delivery list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_delivery) -> ()

let yojson_of_log_delivery =
  (function
   | { worker_log_delivery = v_worker_log_delivery } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_log_delivery__worker_log_delivery
             v_worker_log_delivery
         in
         ("worker_log_delivery", arg) :: bnds
       in
       `Assoc bnds
    : log_delivery -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_delivery

[@@@deriving.end]

type plugin__custom_plugin = {
  arn : string prop;
  revision : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : plugin__custom_plugin) -> ()

let yojson_of_plugin__custom_plugin =
  (function
   | { arn = v_arn; revision = v_revision } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : plugin__custom_plugin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_plugin__custom_plugin

[@@@deriving.end]

type plugin = { custom_plugin : plugin__custom_plugin list }
[@@deriving_inline yojson_of]

let _ = fun (_ : plugin) -> ()

let yojson_of_plugin =
  (function
   | { custom_plugin = v_custom_plugin } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_plugin__custom_plugin
             v_custom_plugin
         in
         ("custom_plugin", arg) :: bnds
       in
       `Assoc bnds
    : plugin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_plugin

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type worker_configuration = {
  arn : string prop;
  revision : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : worker_configuration) -> ()

let yojson_of_worker_configuration =
  (function
   | { arn = v_arn; revision = v_revision } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : worker_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_worker_configuration

[@@@deriving.end]

type aws_mskconnect_connector = {
  connector_configuration : (string * string prop) list;
  description : string prop option; [@option]
  id : string prop option; [@option]
  kafkaconnect_version : string prop;
  name : string prop;
  service_execution_role_arn : string prop;
  capacity : capacity list;
  kafka_cluster : kafka_cluster list;
  kafka_cluster_client_authentication :
    kafka_cluster_client_authentication list;
  kafka_cluster_encryption_in_transit :
    kafka_cluster_encryption_in_transit list;
  log_delivery : log_delivery list;
  plugin : plugin list;
  timeouts : timeouts option;
  worker_configuration : worker_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_mskconnect_connector) -> ()

let yojson_of_aws_mskconnect_connector =
  (function
   | {
       connector_configuration = v_connector_configuration;
       description = v_description;
       id = v_id;
       kafkaconnect_version = v_kafkaconnect_version;
       name = v_name;
       service_execution_role_arn = v_service_execution_role_arn;
       capacity = v_capacity;
       kafka_cluster = v_kafka_cluster;
       kafka_cluster_client_authentication =
         v_kafka_cluster_client_authentication;
       kafka_cluster_encryption_in_transit =
         v_kafka_cluster_encryption_in_transit;
       log_delivery = v_log_delivery;
       plugin = v_plugin;
       timeouts = v_timeouts;
       worker_configuration = v_worker_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_worker_configuration
             v_worker_configuration
         in
         ("worker_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_plugin v_plugin in
         ("plugin", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_log_delivery v_log_delivery
         in
         ("log_delivery", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_kafka_cluster_encryption_in_transit
             v_kafka_cluster_encryption_in_transit
         in
         ("kafka_cluster_encryption_in_transit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_kafka_cluster_client_authentication
             v_kafka_cluster_client_authentication
         in
         ("kafka_cluster_client_authentication", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_kafka_cluster v_kafka_cluster
         in
         ("kafka_cluster", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_capacity v_capacity in
         ("capacity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_service_execution_role_arn
         in
         ("service_execution_role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kafkaconnect_version
         in
         ("kafkaconnect_version", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_connector_configuration
         in
         ("connector_configuration", arg) :: bnds
       in
       `Assoc bnds
    : aws_mskconnect_connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_mskconnect_connector

[@@@deriving.end]

let capacity__autoscaling__scale_in_policy
    ?cpu_utilization_percentage () :
    capacity__autoscaling__scale_in_policy =
  { cpu_utilization_percentage }

let capacity__autoscaling__scale_out_policy
    ?cpu_utilization_percentage () :
    capacity__autoscaling__scale_out_policy =
  { cpu_utilization_percentage }

let capacity__autoscaling ?mcu_count ~max_worker_count
    ~min_worker_count ~scale_in_policy ~scale_out_policy () :
    capacity__autoscaling =
  {
    max_worker_count;
    mcu_count;
    min_worker_count;
    scale_in_policy;
    scale_out_policy;
  }

let capacity__provisioned_capacity ?mcu_count ~worker_count () :
    capacity__provisioned_capacity =
  { mcu_count; worker_count }

let capacity ~autoscaling ~provisioned_capacity () : capacity =
  { autoscaling; provisioned_capacity }

let kafka_cluster__apache_kafka_cluster__vpc ~security_groups
    ~subnets () : kafka_cluster__apache_kafka_cluster__vpc =
  { security_groups; subnets }

let kafka_cluster__apache_kafka_cluster ~bootstrap_servers ~vpc () :
    kafka_cluster__apache_kafka_cluster =
  { bootstrap_servers; vpc }

let kafka_cluster ~apache_kafka_cluster () : kafka_cluster =
  { apache_kafka_cluster }

let kafka_cluster_client_authentication ?authentication_type () :
    kafka_cluster_client_authentication =
  { authentication_type }

let kafka_cluster_encryption_in_transit ?encryption_type () :
    kafka_cluster_encryption_in_transit =
  { encryption_type }

let log_delivery__worker_log_delivery__cloudwatch_logs ?log_group
    ~enabled () : log_delivery__worker_log_delivery__cloudwatch_logs
    =
  { enabled; log_group }

let log_delivery__worker_log_delivery__firehose ?delivery_stream
    ~enabled () : log_delivery__worker_log_delivery__firehose =
  { delivery_stream; enabled }

let log_delivery__worker_log_delivery__s3 ?bucket ?prefix ~enabled ()
    : log_delivery__worker_log_delivery__s3 =
  { bucket; enabled; prefix }

let log_delivery__worker_log_delivery ~cloudwatch_logs ~firehose ~s3
    () : log_delivery__worker_log_delivery =
  { cloudwatch_logs; firehose; s3 }

let log_delivery ~worker_log_delivery () : log_delivery =
  { worker_log_delivery }

let plugin__custom_plugin ~arn ~revision () : plugin__custom_plugin =
  { arn; revision }

let plugin ~custom_plugin () : plugin = { custom_plugin }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let worker_configuration ~arn ~revision () : worker_configuration =
  { arn; revision }

let aws_mskconnect_connector ?description ?id ?timeouts
    ~connector_configuration ~kafkaconnect_version ~name
    ~service_execution_role_arn ~capacity ~kafka_cluster
    ~kafka_cluster_client_authentication
    ~kafka_cluster_encryption_in_transit ~log_delivery ~plugin
    ~worker_configuration () : aws_mskconnect_connector =
  {
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

let make ?description ?id ?timeouts ~connector_configuration
    ~kafkaconnect_version ~name ~service_execution_role_arn ~capacity
    ~kafka_cluster ~kafka_cluster_client_authentication
    ~kafka_cluster_encryption_in_transit ~log_delivery ~plugin
    ~worker_configuration __id =
  let __type = "aws_mskconnect_connector" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       connector_configuration =
         Prop.computed __type __id "connector_configuration";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kafkaconnect_version =
         Prop.computed __type __id "kafkaconnect_version";
       name = Prop.computed __type __id "name";
       service_execution_role_arn =
         Prop.computed __type __id "service_execution_role_arn";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_mskconnect_connector
        (aws_mskconnect_connector ?description ?id ?timeouts
           ~connector_configuration ~kafkaconnect_version ~name
           ~service_execution_role_arn ~capacity ~kafka_cluster
           ~kafka_cluster_client_authentication
           ~kafka_cluster_encryption_in_transit ~log_delivery ~plugin
           ~worker_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts
    ~connector_configuration ~kafkaconnect_version ~name
    ~service_execution_role_arn ~capacity ~kafka_cluster
    ~kafka_cluster_client_authentication
    ~kafka_cluster_encryption_in_transit ~log_delivery ~plugin
    ~worker_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~connector_configuration
      ~kafkaconnect_version ~name ~service_execution_role_arn
      ~capacity ~kafka_cluster ~kafka_cluster_client_authentication
      ~kafka_cluster_encryption_in_transit ~log_delivery ~plugin
      ~worker_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
