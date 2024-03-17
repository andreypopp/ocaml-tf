(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_action_http__run_after
type azurerm_logic_app_action_http__timeouts
type azurerm_logic_app_action_http

val azurerm_logic_app_action_http :
  ?body:string ->
  ?headers:(string * string) list ->
  ?id:string ->
  ?queries:(string * string) list ->
  ?timeouts:azurerm_logic_app_action_http__timeouts ->
  logic_app_id:string ->
  method_:string ->
  name:string ->
  uri:string ->
  run_after:azurerm_logic_app_action_http__run_after list ->
  string ->
  unit
