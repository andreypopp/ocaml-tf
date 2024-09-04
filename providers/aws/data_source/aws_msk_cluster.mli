(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput = {
  enabled : bool prop;  (** enabled *)
  volume_throughput : float prop;  (** volume_throughput *)
}

type broker_node_group_info__storage_info__ebs_storage_info = {
  provisioned_throughput :
    broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** provisioned_throughput *)
  volume_size : float prop;  (** volume_size *)
}

type broker_node_group_info__storage_info = {
  ebs_storage_info :
    broker_node_group_info__storage_info__ebs_storage_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ebs_storage_info *)
}

type broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl = {
  iam : bool prop;  (** iam *)
  scram : bool prop;  (** scram *)
}

type broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication = {
  sasl :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** sasl *)
  tls : bool prop;  (** tls *)
}

type broker_node_group_info__connectivity_info__vpc_connectivity = {
  client_authentication :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** client_authentication *)
}

type broker_node_group_info__connectivity_info__public_access = {
  type_ : string prop; [@key "type"]  (** type *)
}

type broker_node_group_info__connectivity_info = {
  public_access :
    broker_node_group_info__connectivity_info__public_access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** public_access *)
  vpc_connectivity :
    broker_node_group_info__connectivity_info__vpc_connectivity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpc_connectivity *)
}

type broker_node_group_info = {
  az_distribution : string prop;  (** az_distribution *)
  client_subnets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** client_subnets *)
  connectivity_info : broker_node_group_info__connectivity_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** connectivity_info *)
  instance_type : string prop;  (** instance_type *)
  security_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_groups *)
  storage_info : broker_node_group_info__storage_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** storage_info *)
}

type aws_msk_cluster

val aws_msk_cluster :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  cluster_name:string prop ->
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
  broker_node_group_info : broker_node_group_info list prop;
  cluster_name : string prop;
  cluster_uuid : string prop;
  id : string prop;
  kafka_version : string prop;
  number_of_broker_nodes : float prop;
  tags : string Tf_core.assoc prop;
  zookeeper_connect_string : string prop;
  zookeeper_connect_string_tls : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  string ->
  t Tf_core.resource
