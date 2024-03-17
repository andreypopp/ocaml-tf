(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_client_vpn_route__timeouts
type aws_ec2_client_vpn_route

val aws_ec2_client_vpn_route :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_ec2_client_vpn_route__timeouts ->
  client_vpn_endpoint_id:string prop ->
  destination_cidr_block:string prop ->
  target_vpc_subnet_id:string prop ->
  string ->
  unit
