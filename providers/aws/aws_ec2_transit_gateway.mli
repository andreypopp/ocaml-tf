(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_ec2_transit_gateway

val aws_ec2_transit_gateway :
  ?amazon_side_asn:float prop ->
  ?auto_accept_shared_attachments:string prop ->
  ?default_route_table_association:string prop ->
  ?default_route_table_propagation:string prop ->
  ?description:string prop ->
  ?dns_support:string prop ->
  ?id:string prop ->
  ?multicast_support:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_cidr_blocks:string prop list ->
  ?vpn_ecmp_support:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_ec2_transit_gateway

val yojson_of_aws_ec2_transit_gateway :
  aws_ec2_transit_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  amazon_side_asn : float prop;
  arn : string prop;
  association_default_route_table_id : string prop;
  auto_accept_shared_attachments : string prop;
  default_route_table_association : string prop;
  default_route_table_propagation : string prop;
  description : string prop;
  dns_support : string prop;
  id : string prop;
  multicast_support : string prop;
  owner_id : string prop;
  propagation_default_route_table_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_cidr_blocks : string list prop;
  vpn_ecmp_support : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?amazon_side_asn:float prop ->
  ?auto_accept_shared_attachments:string prop ->
  ?default_route_table_association:string prop ->
  ?default_route_table_propagation:string prop ->
  ?description:string prop ->
  ?dns_support:string prop ->
  ?id:string prop ->
  ?multicast_support:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_cidr_blocks:string prop list ->
  ?vpn_ecmp_support:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?amazon_side_asn:float prop ->
  ?auto_accept_shared_attachments:string prop ->
  ?default_route_table_association:string prop ->
  ?default_route_table_propagation:string prop ->
  ?description:string prop ->
  ?dns_support:string prop ->
  ?id:string prop ->
  ?multicast_support:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_cidr_blocks:string prop list ->
  ?vpn_ecmp_support:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
