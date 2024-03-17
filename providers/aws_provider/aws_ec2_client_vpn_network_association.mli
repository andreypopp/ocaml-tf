(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_client_vpn_network_association__timeouts
type aws_ec2_client_vpn_network_association

val aws_ec2_client_vpn_network_association :
  ?id:string prop ->
  ?timeouts:aws_ec2_client_vpn_network_association__timeouts ->
  client_vpn_endpoint_id:string prop ->
  subnet_id:string prop ->
  string ->
  unit
