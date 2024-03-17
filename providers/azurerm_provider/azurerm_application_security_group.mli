(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_security_group__timeouts
type azurerm_application_security_group

val azurerm_application_security_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_application_security_group__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
