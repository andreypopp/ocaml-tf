(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dedicated_host__timeouts
type azurerm_dedicated_host

type t = private {
  auto_replace_on_failure : bool prop;
  dedicated_host_group_id : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  name : string prop;
  platform_fault_domain : float prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_dedicated_host :
  ?auto_replace_on_failure:bool prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dedicated_host__timeouts ->
  dedicated_host_group_id:string prop ->
  location:string prop ->
  name:string prop ->
  platform_fault_domain:float prop ->
  sku_name:string prop ->
  string ->
  t
