(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_transit_gateway_peering_attachment_accepter

val aws_ec2_transit_gateway_peering_attachment_accepter :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  transit_gateway_attachment_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_peering_attachment_accepter

val yojson_of_aws_ec2_transit_gateway_peering_attachment_accepter :
  aws_ec2_transit_gateway_peering_attachment_accepter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  peer_account_id : string prop;
  peer_region : string prop;
  peer_transit_gateway_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  transit_gateway_attachment_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  transit_gateway_attachment_id:string prop ->
  string ->
  t Tf_core.resource
