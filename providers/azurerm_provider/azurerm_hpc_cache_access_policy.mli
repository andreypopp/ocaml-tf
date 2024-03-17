(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_hpc_cache_access_policy__access_rule
type azurerm_hpc_cache_access_policy__timeouts
type azurerm_hpc_cache_access_policy

val azurerm_hpc_cache_access_policy :
  ?id:string prop ->
  ?timeouts:azurerm_hpc_cache_access_policy__timeouts ->
  hpc_cache_id:string prop ->
  name:string prop ->
  access_rule:azurerm_hpc_cache_access_policy__access_rule list ->
  string ->
  unit
