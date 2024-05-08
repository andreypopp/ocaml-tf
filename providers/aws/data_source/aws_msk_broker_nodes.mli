(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type node_info_list = {
  attached_eni_id : string prop;  (** attached_eni_id *)
  broker_id : float prop;  (** broker_id *)
  client_subnet : string prop;  (** client_subnet *)
  client_vpc_ip_address : string prop;  (** client_vpc_ip_address *)
  endpoints : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** endpoints *)
  node_arn : string prop;  (** node_arn *)
}

type aws_msk_broker_nodes

val aws_msk_broker_nodes :
  ?id:string prop ->
  cluster_arn:string prop ->
  unit ->
  aws_msk_broker_nodes

val yojson_of_aws_msk_broker_nodes : aws_msk_broker_nodes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_arn : string prop;
  id : string prop;
  node_info_list : node_info_list list prop;
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
