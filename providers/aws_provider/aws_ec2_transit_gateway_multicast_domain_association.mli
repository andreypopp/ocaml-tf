(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_domain_association__timeouts
type aws_ec2_transit_gateway_multicast_domain_association

type t = private {
  id : string prop;
  subnet_id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}

val aws_ec2_transit_gateway_multicast_domain_association :
  ?id:string prop ->
  ?timeouts:
    aws_ec2_transit_gateway_multicast_domain_association__timeouts ->
  subnet_id:string prop ->
  transit_gateway_attachment_id:string prop ->
  transit_gateway_multicast_domain_id:string prop ->
  string ->
  t
