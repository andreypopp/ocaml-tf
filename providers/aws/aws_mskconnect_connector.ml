(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type capacity__autoscaling__scale_in_policy = {
  cpu_utilization_percentage : float prop option; [@option]
      (** cpu_utilization_percentage *)
}
[@@deriving yojson_of]
(** capacity__autoscaling__scale_in_policy *)

type capacity__autoscaling__scale_out_policy = {
  cpu_utilization_percentage : float prop option; [@option]
      (** cpu_utilization_percentage *)
}
[@@deriving yojson_of]
(** capacity__autoscaling__scale_out_policy *)

type capacity__autoscaling = {
  max_worker_count : float prop;  (** max_worker_count *)
  mcu_count : float prop option; [@option]  (** mcu_count *)
  min_worker_count : float prop;  (** min_worker_count *)
  scale_in_policy : capacity__autoscaling__scale_in_policy list;
  scale_out_policy : capacity__autoscaling__scale_out_policy list;
}
[@@deriving yojson_of]
(** capacity__autoscaling *)

type capacity__provisioned_capacity = {
  mcu_count : float prop option; [@option]  (** mcu_count *)
  worker_count : float prop;  (** worker_count *)
}
[@@deriving yojson_of]
(** capacity__provisioned_capacity *)

type capacity = {
  autoscaling : capacity__autoscaling list;
  provisioned_capacity : capacity__provisioned_capacity list;
}
[@@deriving yojson_of]
(** capacity *)

type kafka_cluster__apache_kafka_cluster__vpc = {
  security_groups : string prop list;  (** security_groups *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** kafka_cluster__apache_kafka_cluster__vpc *)

type kafka_cluster__apache_kafka_cluster = {
  bootstrap_servers : string prop;  (** bootstrap_servers *)
  vpc : kafka_cluster__apache_kafka_cluster__vpc list;
}
[@@deriving yojson_of]
(** kafka_cluster__apache_kafka_cluster *)

type kafka_cluster = {
  apache_kafka_cluster : kafka_cluster__apache_kafka_cluster list;
}
[@@deriving yojson_of]
(** kafka_cluster *)

type kafka_cluster_client_authentication = {
  authentication_type : string prop option; [@option]
      (** authentication_type *)
}
[@@deriving yojson_of]
(** kafka_cluster_client_authentication *)

type kafka_cluster_encryption_in_transit = {
  encryption_type : string prop option; [@option]
      (** encryption_type *)
}
[@@deriving yojson_of]
(** kafka_cluster_encryption_in_transit *)

type log_delivery__worker_log_delivery__cloudwatch_logs = {
  enabled : bool prop;  (** enabled *)
  log_group : string prop option; [@option]  (** log_group *)
}
[@@deriving yojson_of]
(** log_delivery__worker_log_delivery__cloudwatch_logs *)

type log_delivery__worker_log_delivery__firehose = {
  delivery_stream : string prop option; [@option]
      (** delivery_stream *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** log_delivery__worker_log_delivery__firehose *)

type log_delivery__worker_log_delivery__s3 = {
  bucket : string prop option; [@option]  (** bucket *)
  enabled : bool prop;  (** enabled *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** log_delivery__worker_log_delivery__s3 *)

type log_delivery__worker_log_delivery = {
  cloudwatch_logs :
    log_delivery__worker_log_delivery__cloudwatch_logs list;
  firehose : log_delivery__worker_log_delivery__firehose list;
  s3 : log_delivery__worker_log_delivery__s3 list;
}
[@@deriving yojson_of]
(** log_delivery__worker_log_delivery *)

type log_delivery = {
  worker_log_delivery : log_delivery__worker_log_delivery list;
}
[@@deriving yojson_of]
(** log_delivery *)

type plugin__custom_plugin = {
  arn : string prop;  (** arn *)
  revision : float prop;  (** revision *)
}
[@@deriving yojson_of]
(** plugin__custom_plugin *)

type plugin = { custom_plugin : plugin__custom_plugin list }
[@@deriving yojson_of]
(** plugin *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type worker_configuration = {
  arn : string prop;  (** arn *)
  revision : float prop;  (** revision *)
}
[@@deriving yojson_of]
(** worker_configuration *)

type aws_mskconnect_connector = {
  connector_configuration : (string * string prop) list;
      (** connector_configuration *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kafkaconnect_version : string prop;  (** kafkaconnect_version *)
  name : string prop;  (** name *)
  service_execution_role_arn : string prop;
      (** service_execution_role_arn *)
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
[@@deriving yojson_of]
(** aws_mskconnect_connector *)

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
