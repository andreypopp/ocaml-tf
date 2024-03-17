(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_chaos_studio_experiment__identity
type azurerm_chaos_studio_experiment__selectors
type azurerm_chaos_studio_experiment__steps__branch__actions
type azurerm_chaos_studio_experiment__steps__branch
type azurerm_chaos_studio_experiment__steps
type azurerm_chaos_studio_experiment__timeouts
type azurerm_chaos_studio_experiment

val azurerm_chaos_studio_experiment :
  ?timeouts:azurerm_chaos_studio_experiment__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_chaos_studio_experiment__identity list ->
  selectors:azurerm_chaos_studio_experiment__selectors list ->
  steps:azurerm_chaos_studio_experiment__steps list ->
  string ->
  unit
