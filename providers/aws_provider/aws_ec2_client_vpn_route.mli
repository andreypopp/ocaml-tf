(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_client_vpn_route__timeouts
type aws_ec2_client_vpn_route

val aws_ec2_client_vpn_route :
  ?description:string ->
  ?timeouts:aws_ec2_client_vpn_route__timeouts ->
  client_vpn_endpoint_id:string ->
  destination_cidr_block:string ->
  target_vpc_subnet_id:string ->
  string ->
  unit
