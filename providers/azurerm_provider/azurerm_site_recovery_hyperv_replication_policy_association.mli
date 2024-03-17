(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_hyperv_replication_policy_association__timeouts

type azurerm_site_recovery_hyperv_replication_policy_association

val azurerm_site_recovery_hyperv_replication_policy_association :
  ?id:string ->
  ?timeouts:
    azurerm_site_recovery_hyperv_replication_policy_association__timeouts ->
  hyperv_site_id:string ->
  name:string ->
  policy_id:string ->
  string ->
  unit
