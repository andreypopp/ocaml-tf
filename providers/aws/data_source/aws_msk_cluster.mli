(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_msk_cluster

val aws_msk_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_name:string prop ->
  unit ->
  aws_msk_cluster

val yojson_of_aws_msk_cluster : aws_msk_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  bootstrap_brokers : string prop;
  bootstrap_brokers_public_sasl_iam : string prop;
  bootstrap_brokers_public_sasl_scram : string prop;
  bootstrap_brokers_public_tls : string prop;
  bootstrap_brokers_sasl_iam : string prop;
  bootstrap_brokers_sasl_scram : string prop;
  bootstrap_brokers_tls : string prop;
  cluster_name : string prop;
  cluster_uuid : string prop;
  id : string prop;
  kafka_version : string prop;
  number_of_broker_nodes : float prop;
  tags : (string * string) list prop;
  zookeeper_connect_string : string prop;
  zookeeper_connect_string_tls : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  cluster_name:string prop ->
  string ->
  t Tf_core.resource
