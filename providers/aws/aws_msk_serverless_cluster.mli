(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type client_authentication__sasl__iam

val client_authentication__sasl__iam :
  enabled:bool prop -> unit -> client_authentication__sasl__iam

type client_authentication__sasl

val client_authentication__sasl :
  iam:client_authentication__sasl__iam list ->
  unit ->
  client_authentication__sasl

type client_authentication

val client_authentication :
  sasl:client_authentication__sasl list ->
  unit ->
  client_authentication

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type vpc_config

val vpc_config :
  ?security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  vpc_config

type aws_msk_serverless_cluster

val aws_msk_serverless_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  client_authentication:client_authentication list ->
  vpc_config:vpc_config list ->
  unit ->
  aws_msk_serverless_cluster

val yojson_of_aws_msk_serverless_cluster :
  aws_msk_serverless_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  cluster_name : string prop;
  cluster_uuid : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  client_authentication:client_authentication list ->
  vpc_config:vpc_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  client_authentication:client_authentication list ->
  vpc_config:vpc_config list ->
  string ->
  t Tf_core.resource
