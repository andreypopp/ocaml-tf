(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_advanced_threat_protection__timeouts
type azurerm_advanced_threat_protection

type t = private {
  enabled : bool prop;
  id : string prop;
  target_resource_id : string prop;
}

val azurerm_advanced_threat_protection :
  ?id:string prop ->
  ?timeouts:azurerm_advanced_threat_protection__timeouts ->
  enabled:bool prop ->
  target_resource_id:string prop ->
  string ->
  t
