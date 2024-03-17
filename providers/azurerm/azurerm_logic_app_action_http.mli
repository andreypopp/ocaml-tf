(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_action_http__run_after
type azurerm_logic_app_action_http__timeouts
type azurerm_logic_app_action_http

type t = private {
  body : string prop;
  headers : (string * string) list prop;
  id : string prop;
  logic_app_id : string prop;
  method_ : string prop;
  name : string prop;
  queries : (string * string) list prop;
  uri : string prop;
}

val azurerm_logic_app_action_http :
  ?body:string prop ->
  ?headers:(string * string prop) list ->
  ?id:string prop ->
  ?queries:(string * string prop) list ->
  ?timeouts:azurerm_logic_app_action_http__timeouts ->
  logic_app_id:string prop ->
  method_:string prop ->
  name:string prop ->
  uri:string prop ->
  run_after:azurerm_logic_app_action_http__run_after list ->
  string ->
  t
