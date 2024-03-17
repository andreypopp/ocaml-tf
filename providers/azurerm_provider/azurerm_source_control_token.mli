(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_source_control_token__timeouts
type azurerm_source_control_token

val azurerm_source_control_token :
  ?id:string prop ->
  ?token_secret:string prop ->
  ?timeouts:azurerm_source_control_token__timeouts ->
  token:string prop ->
  type_:string prop ->
  string ->
  unit
