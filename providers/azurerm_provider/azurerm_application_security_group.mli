(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_security_group__timeouts
type azurerm_application_security_group

val azurerm_application_security_group :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_application_security_group__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
