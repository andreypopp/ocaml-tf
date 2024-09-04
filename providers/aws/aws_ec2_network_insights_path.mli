(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_network_insights_path

val aws_ec2_network_insights_path :
  ?destination:string prop ->
  ?destination_ip:string prop ->
  ?destination_port:float prop ->
  ?id:string prop ->
  ?source_ip:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  protocol:string prop ->
  source:string prop ->
  unit ->
  aws_ec2_network_insights_path

val yojson_of_aws_ec2_network_insights_path :
  aws_ec2_network_insights_path -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  destination : string prop;
  destination_arn : string prop;
  destination_ip : string prop;
  destination_port : float prop;
  id : string prop;
  protocol : string prop;
  source : string prop;
  source_arn : string prop;
  source_ip : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?destination:string prop ->
  ?destination_ip:string prop ->
  ?destination_port:float prop ->
  ?id:string prop ->
  ?source_ip:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  protocol:string prop ->
  source:string prop ->
  string ->
  t

val make :
  ?destination:string prop ->
  ?destination_ip:string prop ->
  ?destination_port:float prop ->
  ?id:string prop ->
  ?source_ip:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  protocol:string prop ->
  source:string prop ->
  string ->
  t Tf_core.resource
