(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type broker_node_group_info__connectivity_info__public_access = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** broker_node_group_info__connectivity_info__public_access *)

type broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl = {
  iam : bool prop option; [@option]  (** iam *)
  scram : bool prop option; [@option]  (** scram *)
}
[@@deriving yojson_of]
(** broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl *)

type broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication = {
  tls : bool prop option; [@option]  (** tls *)
  sasl :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    list;
}
[@@deriving yojson_of]
(** broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication *)

type broker_node_group_info__connectivity_info__vpc_connectivity = {
  client_authentication :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    list;
}
[@@deriving yojson_of]
(** broker_node_group_info__connectivity_info__vpc_connectivity *)

type broker_node_group_info__connectivity_info = {
  public_access :
    broker_node_group_info__connectivity_info__public_access list;
  vpc_connectivity :
    broker_node_group_info__connectivity_info__vpc_connectivity list;
}
[@@deriving yojson_of]
(** broker_node_group_info__connectivity_info *)

type broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput = {
  enabled : bool prop option; [@option]  (** enabled *)
  volume_throughput : float prop option; [@option]
      (** volume_throughput *)
}
[@@deriving yojson_of]
(** broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput *)

type broker_node_group_info__storage_info__ebs_storage_info = {
  volume_size : float prop option; [@option]  (** volume_size *)
  provisioned_throughput :
    broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    list;
}
[@@deriving yojson_of]
(** broker_node_group_info__storage_info__ebs_storage_info *)

type broker_node_group_info__storage_info = {
  ebs_storage_info :
    broker_node_group_info__storage_info__ebs_storage_info list;
}
[@@deriving yojson_of]
(** broker_node_group_info__storage_info *)

type broker_node_group_info = {
  az_distribution : string prop option; [@option]
      (** az_distribution *)
  client_subnets : string prop list;  (** client_subnets *)
  instance_type : string prop;  (** instance_type *)
  security_groups : string prop list;  (** security_groups *)
  connectivity_info : broker_node_group_info__connectivity_info list;
  storage_info : broker_node_group_info__storage_info list;
}
[@@deriving yojson_of]
(** broker_node_group_info *)

type client_authentication__sasl = {
  iam : bool prop option; [@option]  (** iam *)
  scram : bool prop option; [@option]  (** scram *)
}
[@@deriving yojson_of]
(** client_authentication__sasl *)

type client_authentication__tls = {
  certificate_authority_arns : string prop list option; [@option]
      (** certificate_authority_arns *)
}
[@@deriving yojson_of]
(** client_authentication__tls *)

type client_authentication = {
  unauthenticated : bool prop option; [@option]
      (** unauthenticated *)
  sasl : client_authentication__sasl list;
  tls : client_authentication__tls list;
}
[@@deriving yojson_of]
(** client_authentication *)

type configuration_info = {
  arn : string prop;  (** arn *)
  revision : float prop;  (** revision *)
}
[@@deriving yojson_of]
(** configuration_info *)

type encryption_info__encryption_in_transit = {
  client_broker : string prop option; [@option]  (** client_broker *)
  in_cluster : bool prop option; [@option]  (** in_cluster *)
}
[@@deriving yojson_of]
(** encryption_info__encryption_in_transit *)

type encryption_info = {
  encryption_at_rest_kms_key_arn : string prop option; [@option]
      (** encryption_at_rest_kms_key_arn *)
  encryption_in_transit : encryption_info__encryption_in_transit list;
}
[@@deriving yojson_of]
(** encryption_info *)

type logging_info__broker_logs__cloudwatch_logs = {
  enabled : bool prop;  (** enabled *)
  log_group : string prop option; [@option]  (** log_group *)
}
[@@deriving yojson_of]
(** logging_info__broker_logs__cloudwatch_logs *)

type logging_info__broker_logs__firehose = {
  delivery_stream : string prop option; [@option]
      (** delivery_stream *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** logging_info__broker_logs__firehose *)

type logging_info__broker_logs__s3 = {
  bucket : string prop option; [@option]  (** bucket *)
  enabled : bool prop;  (** enabled *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** logging_info__broker_logs__s3 *)

type logging_info__broker_logs = {
  cloudwatch_logs : logging_info__broker_logs__cloudwatch_logs list;
  firehose : logging_info__broker_logs__firehose list;
  s3 : logging_info__broker_logs__s3 list;
}
[@@deriving yojson_of]
(** logging_info__broker_logs *)

type logging_info = { broker_logs : logging_info__broker_logs list }
[@@deriving yojson_of]
(** logging_info *)

type open_monitoring__prometheus__jmx_exporter = {
  enabled_in_broker : bool prop;  (** enabled_in_broker *)
}
[@@deriving yojson_of]
(** open_monitoring__prometheus__jmx_exporter *)

type open_monitoring__prometheus__node_exporter = {
  enabled_in_broker : bool prop;  (** enabled_in_broker *)
}
[@@deriving yojson_of]
(** open_monitoring__prometheus__node_exporter *)

type open_monitoring__prometheus = {
  jmx_exporter : open_monitoring__prometheus__jmx_exporter list;
  node_exporter : open_monitoring__prometheus__node_exporter list;
}
[@@deriving yojson_of]
(** open_monitoring__prometheus *)

type open_monitoring = {
  prometheus : open_monitoring__prometheus list;
}
[@@deriving yojson_of]
(** open_monitoring *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_msk_cluster = {
  cluster_name : string prop;  (** cluster_name *)
  enhanced_monitoring : string prop option; [@option]
      (** enhanced_monitoring *)
  id : string prop option; [@option]  (** id *)
  kafka_version : string prop;  (** kafka_version *)
  number_of_broker_nodes : float prop;  (** number_of_broker_nodes *)
  storage_mode : string prop option; [@option]  (** storage_mode *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  broker_node_group_info : broker_node_group_info list;
  client_authentication : client_authentication list;
  configuration_info : configuration_info list;
  encryption_info : encryption_info list;
  logging_info : logging_info list;
  open_monitoring : open_monitoring list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_msk_cluster *)

let broker_node_group_info__connectivity_info__public_access ?type_
    () : broker_node_group_info__connectivity_info__public_access =
  { type_ }

let broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    ?iam ?scram () :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    =
  { iam; scram }

let broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    ?tls ~sasl () :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    =
  { tls; sasl }

let broker_node_group_info__connectivity_info__vpc_connectivity
    ~client_authentication () :
    broker_node_group_info__connectivity_info__vpc_connectivity =
  { client_authentication }

let broker_node_group_info__connectivity_info ~public_access
    ~vpc_connectivity () : broker_node_group_info__connectivity_info
    =
  { public_access; vpc_connectivity }

let broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    ?enabled ?volume_throughput () :
    broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    =
  { enabled; volume_throughput }

let broker_node_group_info__storage_info__ebs_storage_info
    ?volume_size ~provisioned_throughput () :
    broker_node_group_info__storage_info__ebs_storage_info =
  { volume_size; provisioned_throughput }

let broker_node_group_info__storage_info ~ebs_storage_info () :
    broker_node_group_info__storage_info =
  { ebs_storage_info }

let broker_node_group_info ?az_distribution ~client_subnets
    ~instance_type ~security_groups ~connectivity_info ~storage_info
    () : broker_node_group_info =
  {
    az_distribution;
    client_subnets;
    instance_type;
    security_groups;
    connectivity_info;
    storage_info;
  }

let client_authentication__sasl ?iam ?scram () :
    client_authentication__sasl =
  { iam; scram }

let client_authentication__tls ?certificate_authority_arns () :
    client_authentication__tls =
  { certificate_authority_arns }

let client_authentication ?unauthenticated ~sasl ~tls () :
    client_authentication =
  { unauthenticated; sasl; tls }

let configuration_info ~arn ~revision () : configuration_info =
  { arn; revision }

let encryption_info__encryption_in_transit ?client_broker ?in_cluster
    () : encryption_info__encryption_in_transit =
  { client_broker; in_cluster }

let encryption_info ?encryption_at_rest_kms_key_arn
    ~encryption_in_transit () : encryption_info =
  { encryption_at_rest_kms_key_arn; encryption_in_transit }

let logging_info__broker_logs__cloudwatch_logs ?log_group ~enabled ()
    : logging_info__broker_logs__cloudwatch_logs =
  { enabled; log_group }

let logging_info__broker_logs__firehose ?delivery_stream ~enabled ()
    : logging_info__broker_logs__firehose =
  { delivery_stream; enabled }

let logging_info__broker_logs__s3 ?bucket ?prefix ~enabled () :
    logging_info__broker_logs__s3 =
  { bucket; enabled; prefix }

let logging_info__broker_logs ~cloudwatch_logs ~firehose ~s3 () :
    logging_info__broker_logs =
  { cloudwatch_logs; firehose; s3 }

let logging_info ~broker_logs () : logging_info = { broker_logs }

let open_monitoring__prometheus__jmx_exporter ~enabled_in_broker () :
    open_monitoring__prometheus__jmx_exporter =
  { enabled_in_broker }

let open_monitoring__prometheus__node_exporter ~enabled_in_broker ()
    : open_monitoring__prometheus__node_exporter =
  { enabled_in_broker }

let open_monitoring__prometheus ~jmx_exporter ~node_exporter () :
    open_monitoring__prometheus =
  { jmx_exporter; node_exporter }

let open_monitoring ~prometheus () : open_monitoring = { prometheus }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_msk_cluster ?enhanced_monitoring ?id ?storage_mode ?tags
    ?tags_all ?timeouts ~cluster_name ~kafka_version
    ~number_of_broker_nodes ~broker_node_group_info
    ~client_authentication ~configuration_info ~encryption_info
    ~logging_info ~open_monitoring () : aws_msk_cluster =
  {
    cluster_name;
    enhanced_monitoring;
    id;
    kafka_version;
    number_of_broker_nodes;
    storage_mode;
    tags;
    tags_all;
    broker_node_group_info;
    client_authentication;
    configuration_info;
    encryption_info;
    logging_info;
    open_monitoring;
    timeouts;
  }

type t = {
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

let register ?tf_module ?enhanced_monitoring ?id ?storage_mode ?tags
    ?tags_all ?timeouts ~cluster_name ~kafka_version
    ~number_of_broker_nodes ~broker_node_group_info
    ~client_authentication ~configuration_info ~encryption_info
    ~logging_info ~open_monitoring __resource_id =
  let __resource_type = "aws_msk_cluster" in
  let __resource =
    aws_msk_cluster ?enhanced_monitoring ?id ?storage_mode ?tags
      ?tags_all ?timeouts ~cluster_name ~kafka_version
      ~number_of_broker_nodes ~broker_node_group_info
      ~client_authentication ~configuration_info ~encryption_info
      ~logging_info ~open_monitoring ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_cluster __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       bootstrap_brokers =
         Prop.computed __resource_type __resource_id
           "bootstrap_brokers";
       bootstrap_brokers_public_sasl_iam =
         Prop.computed __resource_type __resource_id
           "bootstrap_brokers_public_sasl_iam";
       bootstrap_brokers_public_sasl_scram =
         Prop.computed __resource_type __resource_id
           "bootstrap_brokers_public_sasl_scram";
       bootstrap_brokers_public_tls =
         Prop.computed __resource_type __resource_id
           "bootstrap_brokers_public_tls";
       bootstrap_brokers_sasl_iam =
         Prop.computed __resource_type __resource_id
           "bootstrap_brokers_sasl_iam";
       bootstrap_brokers_sasl_scram =
         Prop.computed __resource_type __resource_id
           "bootstrap_brokers_sasl_scram";
       bootstrap_brokers_tls =
         Prop.computed __resource_type __resource_id
           "bootstrap_brokers_tls";
       bootstrap_brokers_vpc_connectivity_sasl_iam =
         Prop.computed __resource_type __resource_id
           "bootstrap_brokers_vpc_connectivity_sasl_iam";
       bootstrap_brokers_vpc_connectivity_sasl_scram =
         Prop.computed __resource_type __resource_id
           "bootstrap_brokers_vpc_connectivity_sasl_scram";
       bootstrap_brokers_vpc_connectivity_tls =
         Prop.computed __resource_type __resource_id
           "bootstrap_brokers_vpc_connectivity_tls";
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       cluster_uuid =
         Prop.computed __resource_type __resource_id "cluster_uuid";
       current_version =
         Prop.computed __resource_type __resource_id
           "current_version";
       enhanced_monitoring =
         Prop.computed __resource_type __resource_id
           "enhanced_monitoring";
       id = Prop.computed __resource_type __resource_id "id";
       kafka_version =
         Prop.computed __resource_type __resource_id "kafka_version";
       number_of_broker_nodes =
         Prop.computed __resource_type __resource_id
           "number_of_broker_nodes";
       storage_mode =
         Prop.computed __resource_type __resource_id "storage_mode";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       zookeeper_connect_string =
         Prop.computed __resource_type __resource_id
           "zookeeper_connect_string";
       zookeeper_connect_string_tls =
         Prop.computed __resource_type __resource_id
           "zookeeper_connect_string_tls";
     }
      : t)
  in
  __resource_attributes
