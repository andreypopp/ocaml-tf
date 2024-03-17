(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_vpc_connection

val aws_msk_vpc_connection :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  authentication:string prop ->
  client_subnets:string prop list ->
  security_groups:string prop list ->
  target_cluster_arn:string prop ->
  vpc_id:string prop ->
  string ->
  unit
