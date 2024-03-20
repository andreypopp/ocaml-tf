(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_availability_zone_group

val aws_ec2_availability_zone_group :
  ?id:string prop ->
  group_name:string prop ->
  opt_in_status:string prop ->
  unit ->
  aws_ec2_availability_zone_group

val yojson_of_aws_ec2_availability_zone_group :
  aws_ec2_availability_zone_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  group_name : string prop;
  id : string prop;
  opt_in_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group_name:string prop ->
  opt_in_status:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  group_name:string prop ->
  opt_in_status:string prop ->
  string ->
  t Tf_core.resource
