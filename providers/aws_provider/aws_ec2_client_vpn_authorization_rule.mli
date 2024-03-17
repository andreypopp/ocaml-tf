(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_client_vpn_authorization_rule__timeouts
type aws_ec2_client_vpn_authorization_rule

val aws_ec2_client_vpn_authorization_rule :
  ?access_group_id:string prop ->
  ?authorize_all_groups:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_ec2_client_vpn_authorization_rule__timeouts ->
  client_vpn_endpoint_id:string prop ->
  target_network_cidr:string prop ->
  string ->
  unit
