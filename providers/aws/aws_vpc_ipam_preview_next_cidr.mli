(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_vpc_ipam_preview_next_cidr

val aws_vpc_ipam_preview_next_cidr :
  ?disallowed_cidrs:string prop list ->
  ?id:string prop ->
  ?netmask_length:float prop ->
  ipam_pool_id:string prop ->
  unit ->
  aws_vpc_ipam_preview_next_cidr

val yojson_of_aws_vpc_ipam_preview_next_cidr :
  aws_vpc_ipam_preview_next_cidr -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cidr : string prop;
  disallowed_cidrs : string list prop;
  id : string prop;
  ipam_pool_id : string prop;
  netmask_length : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?disallowed_cidrs:string prop list ->
  ?id:string prop ->
  ?netmask_length:float prop ->
  ipam_pool_id:string prop ->
  string ->
  t
