(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type add_on

val add_on :
  snapshot_time:string prop ->
  status:string prop ->
  type_:string prop ->
  unit ->
  add_on

type aws_lightsail_instance

val aws_lightsail_instance :
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?key_pair_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?user_data:string prop ->
  ?add_on:add_on list ->
  availability_zone:string prop ->
  blueprint_id:string prop ->
  bundle_id:string prop ->
  name:string prop ->
  unit ->
  aws_lightsail_instance

val yojson_of_aws_lightsail_instance : aws_lightsail_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  blueprint_id : string prop;
  bundle_id : string prop;
  cpu_count : float prop;
  created_at : string prop;
  id : string prop;
  ip_address_type : string prop;
  ipv6_addresses : string list prop;
  is_static_ip : bool prop;
  key_pair_name : string prop;
  name : string prop;
  private_ip_address : string prop;
  public_ip_address : string prop;
  ram_size : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  user_data : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?key_pair_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?user_data:string prop ->
  ?add_on:add_on list ->
  availability_zone:string prop ->
  blueprint_id:string prop ->
  bundle_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?key_pair_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?user_data:string prop ->
  ?add_on:add_on list ->
  availability_zone:string prop ->
  blueprint_id:string prop ->
  bundle_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
