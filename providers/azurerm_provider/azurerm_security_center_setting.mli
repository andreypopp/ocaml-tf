(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_setting__timeouts
type azurerm_security_center_setting

val azurerm_security_center_setting :
  ?id:string prop ->
  ?timeouts:azurerm_security_center_setting__timeouts ->
  enabled:bool prop ->
  setting_name:string prop ->
  string ->
  unit
