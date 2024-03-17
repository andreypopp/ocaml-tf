(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_domain_association__timeouts
type aws_ec2_transit_gateway_multicast_domain_association

val aws_ec2_transit_gateway_multicast_domain_association :
  ?id:string ->
  ?timeouts:
    aws_ec2_transit_gateway_multicast_domain_association__timeouts ->
  subnet_id:string ->
  transit_gateway_attachment_id:string ->
  transit_gateway_multicast_domain_id:string ->
  string ->
  unit
