(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3outposts_endpoint__network_interfaces = {
  network_interface_id : string;  (** network_interface_id *)
}

type aws_s3outposts_endpoint

val aws_s3outposts_endpoint :
  ?access_type:string ->
  ?customer_owned_ipv4_pool:string ->
  ?id:string ->
  outpost_id:string ->
  security_group_id:string ->
  subnet_id:string ->
  string ->
  unit
