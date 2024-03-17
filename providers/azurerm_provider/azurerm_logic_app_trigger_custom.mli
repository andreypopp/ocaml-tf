(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_trigger_custom__timeouts
type azurerm_logic_app_trigger_custom

val azurerm_logic_app_trigger_custom :
  ?id:string prop ->
  ?timeouts:azurerm_logic_app_trigger_custom__timeouts ->
  body:string prop ->
  logic_app_id:string prop ->
  name:string prop ->
  string ->
  unit
