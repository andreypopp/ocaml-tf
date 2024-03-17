(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_availability_set__timeouts
type azurerm_availability_set

type t = private {
  id : string prop;
  location : string prop;
  managed : bool prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  platform_update_domain_count : float prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_availability_set :
  ?id:string prop ->
  ?managed:bool prop ->
  ?platform_fault_domain_count:float prop ->
  ?platform_update_domain_count:float prop ->
  ?proximity_placement_group_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_availability_set__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
