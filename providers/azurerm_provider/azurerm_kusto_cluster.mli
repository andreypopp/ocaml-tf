(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_cluster__identity
type azurerm_kusto_cluster__optimized_auto_scale
type azurerm_kusto_cluster__sku
type azurerm_kusto_cluster__timeouts
type azurerm_kusto_cluster__virtual_network_configuration
type azurerm_kusto_cluster

type t = private {
  allowed_fqdns : string list prop;
  allowed_ip_ranges : string list prop;
  auto_stop_enabled : bool prop;
  data_ingestion_uri : string prop;
  disk_encryption_enabled : bool prop;
  double_encryption_enabled : bool prop;
  engine : string prop;
  id : string prop;
  language_extensions : string list prop;
  location : string prop;
  name : string prop;
  outbound_network_access_restricted : bool prop;
  public_ip_type : string prop;
  public_network_access_enabled : bool prop;
  purge_enabled : bool prop;
  resource_group_name : string prop;
  streaming_ingestion_enabled : bool prop;
  tags : (string * string) list prop;
  trusted_external_tenants : string list prop;
  uri : string prop;
  zones : string list prop;
}

val azurerm_kusto_cluster :
  ?allowed_fqdns:string prop list ->
  ?allowed_ip_ranges:string prop list ->
  ?auto_stop_enabled:bool prop ->
  ?disk_encryption_enabled:bool prop ->
  ?double_encryption_enabled:bool prop ->
  ?engine:string prop ->
  ?id:string prop ->
  ?language_extensions:string prop list ->
  ?outbound_network_access_restricted:bool prop ->
  ?public_ip_type:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?purge_enabled:bool prop ->
  ?streaming_ingestion_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?trusted_external_tenants:string prop list ->
  ?zones:string prop list ->
  ?timeouts:azurerm_kusto_cluster__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_kusto_cluster__identity list ->
  optimized_auto_scale:
    azurerm_kusto_cluster__optimized_auto_scale list ->
  sku:azurerm_kusto_cluster__sku list ->
  virtual_network_configuration:
    azurerm_kusto_cluster__virtual_network_configuration list ->
  string ->
  t
