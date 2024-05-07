(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_msk_bootstrap_brokers

val aws_msk_bootstrap_brokers :
  ?id:string prop ->
  cluster_arn:string prop ->
  unit ->
  aws_msk_bootstrap_brokers

val yojson_of_aws_msk_bootstrap_brokers :
  aws_msk_bootstrap_brokers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  cluster_arn : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_arn:string prop ->
  string ->
  t Tf_core.resource
