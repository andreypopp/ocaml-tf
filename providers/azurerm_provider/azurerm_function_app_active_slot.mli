(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_function_app_active_slot__timeouts
type azurerm_function_app_active_slot

type t = private {
  id : string prop;
  last_successful_swap : string prop;
  overwrite_network_config : bool prop;
  slot_id : string prop;
}

val azurerm_function_app_active_slot :
  ?id:string prop ->
  ?overwrite_network_config:bool prop ->
  ?timeouts:azurerm_function_app_active_slot__timeouts ->
  slot_id:string prop ->
  string ->
  t
