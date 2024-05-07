(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ipam_pools = {
  address_family : string prop;  (** address_family *)
  allocation_default_netmask_length : float prop;
      (** allocation_default_netmask_length *)
  allocation_max_netmask_length : float prop;
      (** allocation_max_netmask_length *)
  allocation_min_netmask_length : float prop;
      (** allocation_min_netmask_length *)
  allocation_resource_tags : (string * string prop) list;
      (** allocation_resource_tags *)
  arn : string prop;  (** arn *)
  auto_import : bool prop;  (** auto_import *)
  aws_service : string prop;  (** aws_service *)
  description : string prop;  (** description *)
  id : string prop;  (** id *)
  ipam_scope_id : string prop;  (** ipam_scope_id *)
  ipam_scope_type : string prop;  (** ipam_scope_type *)
  locale : string prop;  (** locale *)
  pool_depth : float prop;  (** pool_depth *)
  publicly_advertisable : bool prop;  (** publicly_advertisable *)
  source_ipam_pool_id : string prop;  (** source_ipam_pool_id *)
  state : string prop;  (** state *)
  tags : (string * string prop) list;  (** tags *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_vpc_ipam_pools

val aws_vpc_ipam_pools :
  ?id:string prop -> filter:filter list -> unit -> aws_vpc_ipam_pools

val yojson_of_aws_vpc_ipam_pools : aws_vpc_ipam_pools -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ipam_pools : ipam_pools list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
