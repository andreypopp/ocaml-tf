(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type run_after

val run_after :
  action_name:string prop ->
  action_result:string prop ->
  unit ->
  run_after

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_logic_app_action_http

val azurerm_logic_app_action_http :
  ?body:string prop ->
  ?headers:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?queries:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  logic_app_id:string prop ->
  method_:string prop ->
  name:string prop ->
  uri:string prop ->
  run_after:run_after list ->
  unit ->
  azurerm_logic_app_action_http

val yojson_of_azurerm_logic_app_action_http :
  azurerm_logic_app_action_http -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  body : string prop;
  headers : string Tf_core.assoc prop;
  id : string prop;
  logic_app_id : string prop;
  method_ : string prop;
  name : string prop;
  queries : string Tf_core.assoc prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?body:string prop ->
  ?headers:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?queries:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  logic_app_id:string prop ->
  method_:string prop ->
  name:string prop ->
  uri:string prop ->
  run_after:run_after list ->
  string ->
  t

val make :
  ?body:string prop ->
  ?headers:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?queries:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  logic_app_id:string prop ->
  method_:string prop ->
  name:string prop ->
  uri:string prop ->
  run_after:run_after list ->
  string ->
  t Tf_core.resource
