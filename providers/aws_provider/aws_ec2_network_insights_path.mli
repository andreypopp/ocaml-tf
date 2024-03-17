(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_network_insights_path

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
  unit
