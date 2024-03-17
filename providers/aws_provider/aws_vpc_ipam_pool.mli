(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_pool__timeouts
type aws_vpc_ipam_pool

val aws_vpc_ipam_pool :
  ?allocation_default_netmask_length:float ->
  ?allocation_max_netmask_length:float ->
  ?allocation_min_netmask_length:float ->
  ?allocation_resource_tags:(string * string) list ->
  ?auto_import:bool ->
  ?aws_service:string ->
  ?description:string ->
  ?id:string ->
  ?locale:string ->
  ?public_ip_source:string ->
  ?publicly_advertisable:bool ->
  ?source_ipam_pool_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_vpc_ipam_pool__timeouts ->
  address_family:string ->
  ipam_scope_id:string ->
  string ->
  unit
