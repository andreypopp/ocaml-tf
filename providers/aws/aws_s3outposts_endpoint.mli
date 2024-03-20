(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type network_interfaces = {
  network_interface_id : string prop;  (** network_interface_id *)
}

[@@@deriving.end]

type aws_s3outposts_endpoint

val aws_s3outposts_endpoint :
  ?access_type:string prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?id:string prop ->
  outpost_id:string prop ->
  security_group_id:string prop ->
  subnet_id:string prop ->
  unit ->
  aws_s3outposts_endpoint

val yojson_of_aws_s3outposts_endpoint :
  aws_s3outposts_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_type : string prop;
  arn : string prop;
  cidr_block : string prop;
  creation_time : string prop;
  customer_owned_ipv4_pool : string prop;
  id : string prop;
  network_interfaces : network_interfaces list prop;
  outpost_id : string prop;
  security_group_id : string prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_type:string prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?id:string prop ->
  outpost_id:string prop ->
  security_group_id:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?access_type:string prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?id:string prop ->
  outpost_id:string prop ->
  security_group_id:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
