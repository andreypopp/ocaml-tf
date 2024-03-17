(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_filter

val aws_ec2_traffic_mirror_filter :
  ?description:string ->
  ?id:string ->
  ?network_services:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  string ->
  unit
