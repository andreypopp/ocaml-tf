(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_vpc_connection

type t = private {
  arn : string prop;
  authentication : string prop;
  client_subnets : string list prop;
  id : string prop;
  security_groups : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_cluster_arn : string prop;
  vpc_id : string prop;
}

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
  t
