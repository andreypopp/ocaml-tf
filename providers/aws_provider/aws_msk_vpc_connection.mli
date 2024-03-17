(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_vpc_connection

val aws_msk_vpc_connection :
  ?tags:(string * string) list ->
  authentication:string ->
  client_subnets:string list ->
  security_groups:string list ->
  target_cluster_arn:string ->
  vpc_id:string ->
  string ->
  unit
