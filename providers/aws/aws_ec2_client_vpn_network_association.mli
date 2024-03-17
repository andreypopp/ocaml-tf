(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_client_vpn_network_association__timeouts
type aws_ec2_client_vpn_network_association

type t = private {
  association_id : string prop;
  client_vpn_endpoint_id : string prop;
  id : string prop;
  subnet_id : string prop;
  vpc_id : string prop;
}

val aws_ec2_client_vpn_network_association :
  ?id:string prop ->
  ?timeouts:aws_ec2_client_vpn_network_association__timeouts ->
  client_vpn_endpoint_id:string prop ->
  subnet_id:string prop ->
  string ->
  t
