(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_trigger_http_request__timeouts
type azurerm_logic_app_trigger_http_request

type t = private {
  callback_url : string prop;
  id : string prop;
  logic_app_id : string prop;
  method_ : string prop;
  name : string prop;
  relative_path : string prop;
  schema : string prop;
}

val azurerm_logic_app_trigger_http_request :
  ?id:string prop ->
  ?method_:string prop ->
  ?relative_path:string prop ->
  ?timeouts:azurerm_logic_app_trigger_http_request__timeouts ->
  logic_app_id:string prop ->
  name:string prop ->
  schema:string prop ->
  string ->
  t
