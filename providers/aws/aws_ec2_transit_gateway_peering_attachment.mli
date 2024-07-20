(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type options

val options : ?dynamic_routing:string prop -> unit -> options

type aws_ec2_transit_gateway_peering_attachment

val aws_ec2_transit_gateway_peering_attachment :
  ?id:string prop ->
  ?peer_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?options:options list ->
  peer_region:string prop ->
  peer_transit_gateway_id:string prop ->
  transit_gateway_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_peering_attachment

val yojson_of_aws_ec2_transit_gateway_peering_attachment :
  aws_ec2_transit_gateway_peering_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  peer_account_id : string prop;
  peer_region : string prop;
  peer_transit_gateway_id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?peer_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?options:options list ->
  peer_region:string prop ->
  peer_transit_gateway_id:string prop ->
  transit_gateway_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?peer_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?options:options list ->
  peer_region:string prop ->
  peer_transit_gateway_id:string prop ->
  transit_gateway_id:string prop ->
  string ->
  t Tf_core.resource
