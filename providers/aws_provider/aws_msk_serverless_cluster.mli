(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_serverless_cluster__client_authentication__sasl__iam
type aws_msk_serverless_cluster__client_authentication__sasl
type aws_msk_serverless_cluster__client_authentication
type aws_msk_serverless_cluster__timeouts
type aws_msk_serverless_cluster__vpc_config
type aws_msk_serverless_cluster

val aws_msk_serverless_cluster :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_msk_serverless_cluster__timeouts ->
  cluster_name:string ->
  client_authentication:
    aws_msk_serverless_cluster__client_authentication list ->
  vpc_config:aws_msk_serverless_cluster__vpc_config list ->
  string ->
  unit
