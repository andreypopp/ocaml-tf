(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_instance__add_on
type aws_lightsail_instance

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_data : string prop;
  username : string prop;
}

val aws_lightsail_instance :
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?key_pair_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_data:string prop ->
  availability_zone:string prop ->
  blueprint_id:string prop ->
  bundle_id:string prop ->
  name:string prop ->
  add_on:aws_lightsail_instance__add_on list ->
  string ->
  t
