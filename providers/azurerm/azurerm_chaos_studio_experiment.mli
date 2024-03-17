(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_chaos_studio_experiment__identity
type azurerm_chaos_studio_experiment__selectors
type azurerm_chaos_studio_experiment__steps__branch__actions
type azurerm_chaos_studio_experiment__steps__branch
type azurerm_chaos_studio_experiment__steps
type azurerm_chaos_studio_experiment__timeouts
type azurerm_chaos_studio_experiment

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_chaos_studio_experiment :
  ?id:string prop ->
  ?timeouts:azurerm_chaos_studio_experiment__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_chaos_studio_experiment__identity list ->
  selectors:azurerm_chaos_studio_experiment__selectors list ->
  steps:azurerm_chaos_studio_experiment__steps list ->
  string ->
  t
