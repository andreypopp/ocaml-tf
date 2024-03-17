(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_network_insights_path

val aws_ec2_network_insights_path :
  ?destination_ip:string ->
  ?destination_port:float ->
  ?id:string ->
  ?source_ip:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  destination:string ->
  protocol:string ->
  source:string ->
  string ->
  unit
