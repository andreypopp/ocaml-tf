(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_msk_cluster__broker_node_group_info__connectivity_info__public_access = {
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__broker_node_group_info__connectivity_info__public_access *)

type aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl = {
  iam : bool option; [@option]  (** iam *)
  scram : bool option; [@option]  (** scram *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl *)

type aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication = {
  tls : bool option; [@option]  (** tls *)
  sasl :
    aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication *)

type aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity = {
  client_authentication :
    aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity *)

type aws_msk_cluster__broker_node_group_info__connectivity_info = {
  public_access :
    aws_msk_cluster__broker_node_group_info__connectivity_info__public_access
    list;
  vpc_connectivity :
    aws_msk_cluster__broker_node_group_info__connectivity_info__vpc_connectivity
    list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__broker_node_group_info__connectivity_info *)

type aws_msk_cluster__broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput = {
  enabled : bool option; [@option]  (** enabled *)
  volume_throughput : float option; [@option]
      (** volume_throughput *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput *)

type aws_msk_cluster__broker_node_group_info__storage_info__ebs_storage_info = {
  volume_size : float option; [@option]  (** volume_size *)
  provisioned_throughput :
    aws_msk_cluster__broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__broker_node_group_info__storage_info__ebs_storage_info *)

type aws_msk_cluster__broker_node_group_info__storage_info = {
  ebs_storage_info :
    aws_msk_cluster__broker_node_group_info__storage_info__ebs_storage_info
    list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__broker_node_group_info__storage_info *)

type aws_msk_cluster__broker_node_group_info = {
  az_distribution : string option; [@option]  (** az_distribution *)
  client_subnets : string list;  (** client_subnets *)
  instance_type : string;  (** instance_type *)
  security_groups : string list;  (** security_groups *)
  connectivity_info :
    aws_msk_cluster__broker_node_group_info__connectivity_info list;
  storage_info :
    aws_msk_cluster__broker_node_group_info__storage_info list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__broker_node_group_info *)

type aws_msk_cluster__client_authentication__sasl = {
  iam : bool option; [@option]  (** iam *)
  scram : bool option; [@option]  (** scram *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__client_authentication__sasl *)

type aws_msk_cluster__client_authentication__tls = {
  certificate_authority_arns : string list option; [@option]
      (** certificate_authority_arns *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__client_authentication__tls *)

type aws_msk_cluster__client_authentication = {
  unauthenticated : bool option; [@option]  (** unauthenticated *)
  sasl : aws_msk_cluster__client_authentication__sasl list;
  tls : aws_msk_cluster__client_authentication__tls list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__client_authentication *)

type aws_msk_cluster__configuration_info = {
  arn : string;  (** arn *)
  revision : float;  (** revision *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__configuration_info *)

type aws_msk_cluster__encryption_info__encryption_in_transit = {
  client_broker : string option; [@option]  (** client_broker *)
  in_cluster : bool option; [@option]  (** in_cluster *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__encryption_info__encryption_in_transit *)

type aws_msk_cluster__encryption_info = {
  encryption_at_rest_kms_key_arn : string option; [@option]
      (** encryption_at_rest_kms_key_arn *)
  encryption_in_transit :
    aws_msk_cluster__encryption_info__encryption_in_transit list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__encryption_info *)

type aws_msk_cluster__logging_info__broker_logs__cloudwatch_logs = {
  enabled : bool;  (** enabled *)
  log_group : string option; [@option]  (** log_group *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__logging_info__broker_logs__cloudwatch_logs *)

type aws_msk_cluster__logging_info__broker_logs__firehose = {
  delivery_stream : string option; [@option]  (** delivery_stream *)
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__logging_info__broker_logs__firehose *)

type aws_msk_cluster__logging_info__broker_logs__s3 = {
  bucket : string option; [@option]  (** bucket *)
  enabled : bool;  (** enabled *)
  prefix : string option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__logging_info__broker_logs__s3 *)

type aws_msk_cluster__logging_info__broker_logs = {
  cloudwatch_logs :
    aws_msk_cluster__logging_info__broker_logs__cloudwatch_logs list;
  firehose :
    aws_msk_cluster__logging_info__broker_logs__firehose list;
  s3 : aws_msk_cluster__logging_info__broker_logs__s3 list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__logging_info__broker_logs *)

type aws_msk_cluster__logging_info = {
  broker_logs : aws_msk_cluster__logging_info__broker_logs list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__logging_info *)

type aws_msk_cluster__open_monitoring__prometheus__jmx_exporter = {
  enabled_in_broker : bool;  (** enabled_in_broker *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__open_monitoring__prometheus__jmx_exporter *)

type aws_msk_cluster__open_monitoring__prometheus__node_exporter = {
  enabled_in_broker : bool;  (** enabled_in_broker *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__open_monitoring__prometheus__node_exporter *)

type aws_msk_cluster__open_monitoring__prometheus = {
  jmx_exporter :
    aws_msk_cluster__open_monitoring__prometheus__jmx_exporter list;
  node_exporter :
    aws_msk_cluster__open_monitoring__prometheus__node_exporter list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__open_monitoring__prometheus *)

type aws_msk_cluster__open_monitoring = {
  prometheus : aws_msk_cluster__open_monitoring__prometheus list;
}
[@@deriving yojson_of]
(** aws_msk_cluster__open_monitoring *)

type aws_msk_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_msk_cluster__timeouts *)

type aws_msk_cluster = {
  cluster_name : string;  (** cluster_name *)
  enhanced_monitoring : string option; [@option]
      (** enhanced_monitoring *)
  kafka_version : string;  (** kafka_version *)
  number_of_broker_nodes : float;  (** number_of_broker_nodes *)
  tags : (string * string) list option; [@option]  (** tags *)
  broker_node_group_info :
    aws_msk_cluster__broker_node_group_info list;
  client_authentication :
    aws_msk_cluster__client_authentication list;
  configuration_info : aws_msk_cluster__configuration_info list;
  encryption_info : aws_msk_cluster__encryption_info list;
  logging_info : aws_msk_cluster__logging_info list;
  open_monitoring : aws_msk_cluster__open_monitoring list;
  timeouts : aws_msk_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_msk_cluster *)

let aws_msk_cluster ?enhanced_monitoring ?tags ?timeouts
    ~cluster_name ~kafka_version ~number_of_broker_nodes
    ~broker_node_group_info ~client_authentication
    ~configuration_info ~encryption_info ~logging_info
    ~open_monitoring __resource_id =
  let __resource_type = "aws_msk_cluster" in
  let __resource =
    {
      cluster_name;
      enhanced_monitoring;
      kafka_version;
      number_of_broker_nodes;
      tags;
      broker_node_group_info;
      client_authentication;
      configuration_info;
      encryption_info;
      logging_info;
      open_monitoring;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_msk_cluster __resource);
  ()
