(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_cluster__identity
type azurerm_kusto_cluster__optimized_auto_scale
type azurerm_kusto_cluster__sku
type azurerm_kusto_cluster__timeouts
type azurerm_kusto_cluster__virtual_network_configuration
type azurerm_kusto_cluster

val azurerm_kusto_cluster :
  ?allowed_fqdns:string list ->
  ?allowed_ip_ranges:string list ->
  ?auto_stop_enabled:bool ->
  ?disk_encryption_enabled:bool ->
  ?double_encryption_enabled:bool ->
  ?engine:string ->
  ?language_extensions:string list ->
  ?outbound_network_access_restricted:bool ->
  ?public_ip_type:string ->
  ?public_network_access_enabled:bool ->
  ?purge_enabled:bool ->
  ?streaming_ingestion_enabled:bool ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_kusto_cluster__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_kusto_cluster__identity list ->
  optimized_auto_scale:
    azurerm_kusto_cluster__optimized_auto_scale list ->
  sku:azurerm_kusto_cluster__sku list ->
  virtual_network_configuration:
    azurerm_kusto_cluster__virtual_network_configuration list ->
  string ->
  unit
