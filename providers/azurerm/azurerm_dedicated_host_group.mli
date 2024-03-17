(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dedicated_host_group__timeouts
type azurerm_dedicated_host_group

type t = private {
  automatic_placement_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  zone : string prop;
}

val azurerm_dedicated_host_group :
  ?automatic_placement_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone:string prop ->
  ?timeouts:azurerm_dedicated_host_group__timeouts ->
  location:string prop ->
  name:string prop ->
  platform_fault_domain_count:float prop ->
  resource_group_name:string prop ->
  string ->
  t
