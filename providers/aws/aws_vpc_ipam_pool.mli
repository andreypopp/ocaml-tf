(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_vpc_ipam_pool

val aws_vpc_ipam_pool :
  ?allocation_default_netmask_length:float prop ->
  ?allocation_max_netmask_length:float prop ->
  ?allocation_min_netmask_length:float prop ->
  ?allocation_resource_tags:string prop Tf_core.assoc ->
  ?auto_import:bool prop ->
  ?aws_service:string prop ->
  ?cascade:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?locale:string prop ->
  ?public_ip_source:string prop ->
  ?publicly_advertisable:bool prop ->
  ?source_ipam_pool_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  address_family:string prop ->
  ipam_scope_id:string prop ->
  unit ->
  aws_vpc_ipam_pool

val yojson_of_aws_vpc_ipam_pool : aws_vpc_ipam_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address_family : string prop;
  allocation_default_netmask_length : float prop;
  allocation_max_netmask_length : float prop;
  allocation_min_netmask_length : float prop;
  allocation_resource_tags : string Tf_core.assoc prop;
  arn : string prop;
  auto_import : bool prop;
  aws_service : string prop;
  cascade : bool prop;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?allocation_default_netmask_length:float prop ->
  ?allocation_max_netmask_length:float prop ->
  ?allocation_min_netmask_length:float prop ->
  ?allocation_resource_tags:string prop Tf_core.assoc ->
  ?auto_import:bool prop ->
  ?aws_service:string prop ->
  ?cascade:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?locale:string prop ->
  ?public_ip_source:string prop ->
  ?publicly_advertisable:bool prop ->
  ?source_ipam_pool_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  address_family:string prop ->
  ipam_scope_id:string prop ->
  string ->
  t

val make :
  ?allocation_default_netmask_length:float prop ->
  ?allocation_max_netmask_length:float prop ->
  ?allocation_min_netmask_length:float prop ->
  ?allocation_resource_tags:string prop Tf_core.assoc ->
  ?auto_import:bool prop ->
  ?aws_service:string prop ->
  ?cascade:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?locale:string prop ->
  ?public_ip_source:string prop ->
  ?publicly_advertisable:bool prop ->
  ?source_ipam_pool_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  address_family:string prop ->
  ipam_scope_id:string prop ->
  string ->
  t Tf_core.resource
