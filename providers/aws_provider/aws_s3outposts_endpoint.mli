(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3outposts_endpoint__network_interfaces = {
  network_interface_id : string prop;  (** network_interface_id *)
}

type aws_s3outposts_endpoint

val aws_s3outposts_endpoint :
  ?access_type:string prop ->
  ?customer_owned_ipv4_pool:string prop ->
  ?id:string prop ->
  outpost_id:string prop ->
  security_group_id:string prop ->
  subnet_id:string prop ->
  string ->
  unit
