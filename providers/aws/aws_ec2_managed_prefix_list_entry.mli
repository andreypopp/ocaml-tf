(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_managed_prefix_list_entry

val aws_ec2_managed_prefix_list_entry :
  ?description:string prop ->
  ?id:string prop ->
  cidr:string prop ->
  prefix_list_id:string prop ->
  unit ->
  aws_ec2_managed_prefix_list_entry

val yojson_of_aws_ec2_managed_prefix_list_entry :
  aws_ec2_managed_prefix_list_entry -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cidr : string prop;
  description : string prop;
  id : string prop;
  prefix_list_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  cidr:string prop ->
  prefix_list_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  cidr:string prop ->
  prefix_list_id:string prop ->
  string ->
  t Tf_core.resource
