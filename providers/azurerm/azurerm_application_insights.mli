(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_application_insights

val azurerm_application_insights :
  ?daily_data_cap_in_gb:float prop ->
  ?daily_data_cap_notifications_disabled:bool prop ->
  ?disable_ip_masking:bool prop ->
  ?force_customer_storage_for_profiler:bool prop ->
  ?id:string prop ->
  ?internet_ingestion_enabled:bool prop ->
  ?internet_query_enabled:bool prop ->
  ?local_authentication_disabled:bool prop ->
  ?retention_in_days:float prop ->
  ?sampling_percentage:float prop ->
  ?tags:(string * string prop) list ->
  ?workspace_id:string prop ->
  ?timeouts:timeouts ->
  application_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_application_insights

val yojson_of_azurerm_application_insights :
  azurerm_application_insights -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_id : string prop;
  application_type : string prop;
  connection_string : string prop;
  daily_data_cap_in_gb : float prop;
  daily_data_cap_notifications_disabled : bool prop;
  disable_ip_masking : bool prop;
  force_customer_storage_for_profiler : bool prop;
  id : string prop;
  instrumentation_key : string prop;
  internet_ingestion_enabled : bool prop;
  internet_query_enabled : bool prop;
  local_authentication_disabled : bool prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  retention_in_days : float prop;
  sampling_percentage : float prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?daily_data_cap_in_gb:float prop ->
  ?daily_data_cap_notifications_disabled:bool prop ->
  ?disable_ip_masking:bool prop ->
  ?force_customer_storage_for_profiler:bool prop ->
  ?id:string prop ->
  ?internet_ingestion_enabled:bool prop ->
  ?internet_query_enabled:bool prop ->
  ?local_authentication_disabled:bool prop ->
  ?retention_in_days:float prop ->
  ?sampling_percentage:float prop ->
  ?tags:(string * string prop) list ->
  ?workspace_id:string prop ->
  ?timeouts:timeouts ->
  application_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?daily_data_cap_in_gb:float prop ->
  ?daily_data_cap_notifications_disabled:bool prop ->
  ?disable_ip_masking:bool prop ->
  ?force_customer_storage_for_profiler:bool prop ->
  ?id:string prop ->
  ?internet_ingestion_enabled:bool prop ->
  ?internet_query_enabled:bool prop ->
  ?local_authentication_disabled:bool prop ->
  ?retention_in_days:float prop ->
  ?sampling_percentage:float prop ->
  ?tags:(string * string prop) list ->
  ?workspace_id:string prop ->
  ?timeouts:timeouts ->
  application_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
