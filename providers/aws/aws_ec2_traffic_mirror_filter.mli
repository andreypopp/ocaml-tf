(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_traffic_mirror_filter

val aws_ec2_traffic_mirror_filter :
  ?description:string prop ->
  ?id:string prop ->
  ?network_services:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  unit ->
  aws_ec2_traffic_mirror_filter

val yojson_of_aws_ec2_traffic_mirror_filter :
  aws_ec2_traffic_mirror_filter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  network_services : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?network_services:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?network_services:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t Tf_core.resource
