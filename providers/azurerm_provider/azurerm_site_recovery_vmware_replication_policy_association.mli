(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_vmware_replication_policy_association__timeouts

type azurerm_site_recovery_vmware_replication_policy_association

val azurerm_site_recovery_vmware_replication_policy_association :
  ?id:string prop ->
  ?timeouts:
    azurerm_site_recovery_vmware_replication_policy_association__timeouts ->
  name:string prop ->
  policy_id:string prop ->
  recovery_vault_id:string prop ->
  string ->
  unit
