(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type export_data_options

val export_data_options :
  time_frame:string prop ->
  type_:string prop ->
  unit ->
  export_data_options

type export_data_storage_location

val export_data_storage_location :
  container_id:string prop ->
  root_folder_path:string prop ->
  unit ->
  export_data_storage_location

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_subscription_cost_management_export

val azurerm_subscription_cost_management_export :
  ?active:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recurrence_period_end_date:string prop ->
  recurrence_period_start_date:string prop ->
  recurrence_type:string prop ->
  subscription_id:string prop ->
  export_data_options:export_data_options list ->
  export_data_storage_location:export_data_storage_location list ->
  unit ->
  azurerm_subscription_cost_management_export

val yojson_of_azurerm_subscription_cost_management_export :
  azurerm_subscription_cost_management_export -> json

(** RESOURCE REGISTRATION *)

type t = private {
  active : bool prop;
  id : string prop;
  name : string prop;
  recurrence_period_end_date : string prop;
  recurrence_period_start_date : string prop;
  recurrence_type : string prop;
  subscription_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?active:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  recurrence_period_end_date:string prop ->
  recurrence_period_start_date:string prop ->
  recurrence_type:string prop ->
  subscription_id:string prop ->
  export_data_options:export_data_options list ->
  export_data_storage_location:export_data_storage_location list ->
  string ->
  t
