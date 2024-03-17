(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_insights__timeouts
type azurerm_application_insights

val azurerm_application_insights :
  ?daily_data_cap_in_gb:float ->
  ?daily_data_cap_notifications_disabled:bool ->
  ?disable_ip_masking:bool ->
  ?force_customer_storage_for_profiler:bool ->
  ?id:string ->
  ?internet_ingestion_enabled:bool ->
  ?internet_query_enabled:bool ->
  ?local_authentication_disabled:bool ->
  ?retention_in_days:float ->
  ?sampling_percentage:float ->
  ?tags:(string * string) list ->
  ?workspace_id:string ->
  ?timeouts:azurerm_application_insights__timeouts ->
  application_type:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
