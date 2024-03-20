(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_vpc_ipam_pool

val aws_vpc_ipam_pool :
  ?allocation_resource_tags:(string * string prop) list ->
  ?id:string prop ->
  ?ipam_pool_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_vpc_ipam_pool

val yojson_of_aws_vpc_ipam_pool : aws_vpc_ipam_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  address_family : string prop;
  allocation_default_netmask_length : float prop;
  allocation_max_netmask_length : float prop;
  allocation_min_netmask_length : float prop;
  allocation_resource_tags : (string * string) list prop;
  arn : string prop;
  auto_import : bool prop;
  aws_service : string prop;
  description : string prop;
  id : string prop;
  ipam_pool_id : string prop;
  ipam_scope_id : string prop;
  ipam_scope_type : string prop;
  locale : string prop;
  pool_depth : float prop;
  publicly_advertisable : bool prop;
  source_ipam_pool_id : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allocation_resource_tags:(string * string prop) list ->
  ?id:string prop ->
  ?ipam_pool_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?allocation_resource_tags:(string * string prop) list ->
  ?id:string prop ->
  ?ipam_pool_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
