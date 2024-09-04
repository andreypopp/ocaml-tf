(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_msk_vpc_connection

val aws_msk_vpc_connection :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  unit ->
  aws_msk_vpc_connection

val yojson_of_aws_msk_vpc_connection : aws_msk_vpc_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  authentication : string prop;
  client_subnets : string list prop;
  id : string prop;
  security_groups : string list prop;
  tags : string Tf_core.assoc prop;
  target_cluster_arn : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  string ->
  t Tf_core.resource
