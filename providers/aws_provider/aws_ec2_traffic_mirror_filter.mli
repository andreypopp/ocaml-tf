(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_filter

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  network_services : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ec2_traffic_mirror_filter :
  ?description:string prop ->
  ?id:string prop ->
  ?network_services:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t
