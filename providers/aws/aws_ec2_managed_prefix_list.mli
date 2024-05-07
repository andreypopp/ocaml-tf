(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type entry

val entry :
  ?description:string prop -> cidr:string prop -> unit -> entry

type aws_ec2_managed_prefix_list

val aws_ec2_managed_prefix_list :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  address_family:string prop ->
  max_entries:float prop ->
  name:string prop ->
  entry:entry list ->
  unit ->
  aws_ec2_managed_prefix_list

val yojson_of_aws_ec2_managed_prefix_list :
  aws_ec2_managed_prefix_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address_family : string prop;
  arn : string prop;
  id : string prop;
  max_entries : float prop;
  name : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  address_family:string prop ->
  max_entries:float prop ->
  name:string prop ->
  entry:entry list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  address_family:string prop ->
  max_entries:float prop ->
  name:string prop ->
  entry:entry list ->
  string ->
  t Tf_core.resource
