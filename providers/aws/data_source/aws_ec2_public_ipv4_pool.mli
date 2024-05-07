(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pool_address_ranges = {
  address_count : float prop;  (** address_count *)
  available_address_count : float prop;
      (** available_address_count *)
  first_address : string prop;  (** first_address *)
  last_address : string prop;  (** last_address *)
}

type aws_ec2_public_ipv4_pool

val aws_ec2_public_ipv4_pool :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  pool_id:string prop ->
  unit ->
  aws_ec2_public_ipv4_pool

val yojson_of_aws_ec2_public_ipv4_pool :
  aws_ec2_public_ipv4_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  network_border_group : string prop;
  pool_address_ranges : pool_address_ranges list prop;
  pool_id : string prop;
  tags : (string * string) list prop;
  total_address_count : float prop;
  total_available_address_count : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  pool_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  pool_id:string prop ->
  string ->
  t Tf_core.resource
