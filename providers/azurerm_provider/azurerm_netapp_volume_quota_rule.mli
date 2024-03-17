(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_volume_quota_rule__timeouts
type azurerm_netapp_volume_quota_rule

val azurerm_netapp_volume_quota_rule :
  ?id:string ->
  ?quota_target:string ->
  ?timeouts:azurerm_netapp_volume_quota_rule__timeouts ->
  location:string ->
  name:string ->
  quota_size_in_kib:float ->
  quota_type:string ->
  volume_id:string ->
  string ->
  unit
