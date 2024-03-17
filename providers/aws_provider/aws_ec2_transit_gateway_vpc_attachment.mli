(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_vpc_attachment

val aws_ec2_transit_gateway_vpc_attachment :
  ?appliance_mode_support:string ->
  ?dns_support:string ->
  ?ipv6_support:string ->
  ?tags:(string * string) list ->
  subnet_ids:string list ->
  transit_gateway_id:string ->
  vpc_id:string ->
  string ->
  unit
