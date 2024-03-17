(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subscription_template_deployment__timeouts
type azurerm_subscription_template_deployment

val azurerm_subscription_template_deployment :
  ?debug_level:string ->
  ?tags:(string * string) list ->
  ?template_spec_version_id:string ->
  ?timeouts:azurerm_subscription_template_deployment__timeouts ->
  location:string ->
  name:string ->
  string ->
  unit
