(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_provider_registration__feature
type azurerm_resource_provider_registration__timeouts
type azurerm_resource_provider_registration

val azurerm_resource_provider_registration :
  ?id:string prop ->
  ?timeouts:azurerm_resource_provider_registration__timeouts ->
  name:string prop ->
  feature:azurerm_resource_provider_registration__feature list ->
  string ->
  unit
