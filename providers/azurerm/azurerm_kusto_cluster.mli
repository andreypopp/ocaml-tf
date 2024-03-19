(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type optimized_auto_scale

val optimized_auto_scale :
  maximum_instances:float prop ->
  minimum_instances:float prop ->
  unit ->
  optimized_auto_scale

type sku

val sku : ?capacity:float prop -> name:string prop -> unit -> sku

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type virtual_network_configuration

val virtual_network_configuration :
  data_management_public_ip_id:string prop ->
  engine_public_ip_id:string prop ->
  subnet_id:string prop ->
  unit ->
  virtual_network_configuration

type azurerm_kusto_cluster

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
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  optimized_auto_scale:optimized_auto_scale list ->
  sku:sku list ->
  virtual_network_configuration:virtual_network_configuration list ->
  unit ->
  azurerm_kusto_cluster

val yojson_of_azurerm_kusto_cluster : azurerm_kusto_cluster -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  optimized_auto_scale:optimized_auto_scale list ->
  sku:sku list ->
  virtual_network_configuration:virtual_network_configuration list ->
  string ->
  t
