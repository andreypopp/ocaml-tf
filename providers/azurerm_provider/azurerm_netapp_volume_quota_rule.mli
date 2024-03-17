(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_volume_quota_rule__timeouts
type azurerm_netapp_volume_quota_rule

val azurerm_netapp_volume_quota_rule :
  ?id:string prop ->
  ?quota_target:string prop ->
  ?timeouts:azurerm_netapp_volume_quota_rule__timeouts ->
  location:string prop ->
  name:string prop ->
  quota_size_in_kib:float prop ->
  quota_type:string prop ->
  volume_id:string prop ->
  string ->
  unit
