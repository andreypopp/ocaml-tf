(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_filter

val aws_ec2_traffic_mirror_filter :
  ?description:string prop ->
  ?id:string prop ->
  ?network_services:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  unit
