(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_action_custom__timeouts
type azurerm_logic_app_action_custom

type t = private {
  body : string prop;
  id : string prop;
  logic_app_id : string prop;
  name : string prop;
}

val azurerm_logic_app_action_custom :
  ?id:string prop ->
  ?timeouts:azurerm_logic_app_action_custom__timeouts ->
  body:string prop ->
  logic_app_id:string prop ->
  name:string prop ->
  string ->
  t
