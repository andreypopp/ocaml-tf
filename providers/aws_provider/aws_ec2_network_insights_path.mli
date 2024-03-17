(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_network_insights_path

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ec2_network_insights_path :
  ?destination_ip:string prop ->
  ?destination_port:float prop ->
  ?id:string prop ->
  ?source_ip:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  destination:string prop ->
  protocol:string prop ->
  source:string prop ->
  string ->
  t
