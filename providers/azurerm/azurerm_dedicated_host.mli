(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dedicated_host

val azurerm_dedicated_host :
  ?auto_replace_on_failure:bool prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  dedicated_host_group_id:string prop ->
  location:string prop ->
  name:string prop ->
  platform_fault_domain:float prop ->
  sku_name:string prop ->
  unit ->
  azurerm_dedicated_host

val yojson_of_azurerm_dedicated_host : azurerm_dedicated_host -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?auto_replace_on_failure:bool prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  dedicated_host_group_id:string prop ->
  location:string prop ->
  name:string prop ->
  platform_fault_domain:float prop ->
  sku_name:string prop ->
  string ->
  t
