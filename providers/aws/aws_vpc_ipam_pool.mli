(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_pool__timeouts
type aws_vpc_ipam_pool

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
  ipam_scope_id : string prop;
  ipam_scope_type : string prop;
  locale : string prop;
  pool_depth : float prop;
  public_ip_source : string prop;
  publicly_advertisable : bool prop;
  source_ipam_pool_id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_vpc_ipam_pool :
  ?allocation_default_netmask_length:float prop ->
  ?allocation_max_netmask_length:float prop ->
  ?allocation_min_netmask_length:float prop ->
  ?allocation_resource_tags:(string * string prop) list ->
  ?auto_import:bool prop ->
  ?aws_service:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?locale:string prop ->
  ?public_ip_source:string prop ->
  ?publicly_advertisable:bool prop ->
  ?source_ipam_pool_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_ipam_pool__timeouts ->
  address_family:string prop ->
  ipam_scope_id:string prop ->
  string ->
  t
