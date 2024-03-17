(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_volume_group_sap_hana__timeouts

type azurerm_netapp_volume_group_sap_hana__volume__data_protection_replication

type azurerm_netapp_volume_group_sap_hana__volume__data_protection_snapshot_policy

type azurerm_netapp_volume_group_sap_hana__volume__export_policy_rule
type azurerm_netapp_volume_group_sap_hana__volume
type azurerm_netapp_volume_group_sap_hana

val azurerm_netapp_volume_group_sap_hana :
  ?id:string prop ->
  ?timeouts:azurerm_netapp_volume_group_sap_hana__timeouts ->
  account_name:string prop ->
  application_identifier:string prop ->
  group_description:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  volume:azurerm_netapp_volume_group_sap_hana__volume list ->
  string ->
  unit
