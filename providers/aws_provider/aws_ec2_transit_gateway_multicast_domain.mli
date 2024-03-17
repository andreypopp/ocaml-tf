(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_domain__timeouts
type aws_ec2_transit_gateway_multicast_domain

type t = private {
  arn : string prop;
  auto_accept_shared_associations : string prop;
  id : string prop;
  igmpv2_support : string prop;
  owner_id : string prop;
  static_sources_support : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_id : string prop;
}

val aws_ec2_transit_gateway_multicast_domain :
  ?auto_accept_shared_associations:string prop ->
  ?id:string prop ->
  ?igmpv2_support:string prop ->
  ?static_sources_support:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ec2_transit_gateway_multicast_domain__timeouts ->
  transit_gateway_id:string prop ->
  string ->
  t
