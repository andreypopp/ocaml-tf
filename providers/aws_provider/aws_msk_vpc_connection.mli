(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_vpc_connection

val aws_msk_vpc_connection :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  authentication:string ->
  client_subnets:string list ->
  security_groups:string list ->
  target_cluster_arn:string ->
  vpc_id:string ->
  string ->
  unit
