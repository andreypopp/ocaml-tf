(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_domain__timeouts
type aws_ec2_transit_gateway_multicast_domain

val aws_ec2_transit_gateway_multicast_domain :
  ?auto_accept_shared_associations:string ->
  ?id:string ->
  ?igmpv2_support:string ->
  ?static_sources_support:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_ec2_transit_gateway_multicast_domain__timeouts ->
  transit_gateway_id:string ->
  string ->
  unit
