(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type advanced_filter__bool_equals

val advanced_filter__bool_equals :
  key:string prop ->
  value:bool prop ->
  unit ->
  advanced_filter__bool_equals

type advanced_filter__is_not_null

val advanced_filter__is_not_null :
  key:string prop -> unit -> advanced_filter__is_not_null

type advanced_filter__is_null_or_undefined

val advanced_filter__is_null_or_undefined :
  key:string prop -> unit -> advanced_filter__is_null_or_undefined

type advanced_filter__number_greater_than

val advanced_filter__number_greater_than :
  key:string prop ->
  value:float prop ->
  unit ->
  advanced_filter__number_greater_than

type advanced_filter__number_greater_than_or_equals

val advanced_filter__number_greater_than_or_equals :
  key:string prop ->
  value:float prop ->
  unit ->
  advanced_filter__number_greater_than_or_equals

type advanced_filter__number_in

val advanced_filter__number_in :
  key:string prop ->
  values:float prop list ->
  unit ->
  advanced_filter__number_in

type advanced_filter__number_in_range

val advanced_filter__number_in_range :
  key:string prop ->
  values:float prop list list ->
  unit ->
  advanced_filter__number_in_range

type advanced_filter__number_less_than

val advanced_filter__number_less_than :
  key:string prop ->
  value:float prop ->
  unit ->
  advanced_filter__number_less_than

type advanced_filter__number_less_than_or_equals

val advanced_filter__number_less_than_or_equals :
  key:string prop ->
  value:float prop ->
  unit ->
  advanced_filter__number_less_than_or_equals

type advanced_filter__number_not_in

val advanced_filter__number_not_in :
  key:string prop ->
  values:float prop list ->
  unit ->
  advanced_filter__number_not_in

type advanced_filter__number_not_in_range

val advanced_filter__number_not_in_range :
  key:string prop ->
  values:float prop list list ->
  unit ->
  advanced_filter__number_not_in_range

type advanced_filter__string_begins_with

val advanced_filter__string_begins_with :
  key:string prop ->
  values:string prop list ->
  unit ->
  advanced_filter__string_begins_with

type advanced_filter__string_contains

val advanced_filter__string_contains :
  key:string prop ->
  values:string prop list ->
  unit ->
  advanced_filter__string_contains

type advanced_filter__string_ends_with

val advanced_filter__string_ends_with :
  key:string prop ->
  values:string prop list ->
  unit ->
  advanced_filter__string_ends_with

type advanced_filter__string_in

val advanced_filter__string_in :
  key:string prop ->
  values:string prop list ->
  unit ->
  advanced_filter__string_in

type advanced_filter__string_not_begins_with

val advanced_filter__string_not_begins_with :
  key:string prop ->
  values:string prop list ->
  unit ->
  advanced_filter__string_not_begins_with

type advanced_filter__string_not_contains

val advanced_filter__string_not_contains :
  key:string prop ->
  values:string prop list ->
  unit ->
  advanced_filter__string_not_contains

type advanced_filter__string_not_ends_with

val advanced_filter__string_not_ends_with :
  key:string prop ->
  values:string prop list ->
  unit ->
  advanced_filter__string_not_ends_with

type advanced_filter__string_not_in

val advanced_filter__string_not_in :
  key:string prop ->
  values:string prop list ->
  unit ->
  advanced_filter__string_not_in

type advanced_filter

val advanced_filter :
  bool_equals:advanced_filter__bool_equals list ->
  is_not_null:advanced_filter__is_not_null list ->
  is_null_or_undefined:advanced_filter__is_null_or_undefined list ->
  number_greater_than:advanced_filter__number_greater_than list ->
  number_greater_than_or_equals:
    advanced_filter__number_greater_than_or_equals list ->
  number_in:advanced_filter__number_in list ->
  number_in_range:advanced_filter__number_in_range list ->
  number_less_than:advanced_filter__number_less_than list ->
  number_less_than_or_equals:
    advanced_filter__number_less_than_or_equals list ->
  number_not_in:advanced_filter__number_not_in list ->
  number_not_in_range:advanced_filter__number_not_in_range list ->
  string_begins_with:advanced_filter__string_begins_with list ->
  string_contains:advanced_filter__string_contains list ->
  string_ends_with:advanced_filter__string_ends_with list ->
  string_in:advanced_filter__string_in list ->
  string_not_begins_with:advanced_filter__string_not_begins_with list ->
  string_not_contains:advanced_filter__string_not_contains list ->
  string_not_ends_with:advanced_filter__string_not_ends_with list ->
  string_not_in:advanced_filter__string_not_in list ->
  unit ->
  advanced_filter

type azure_function_endpoint

val azure_function_endpoint :
  ?max_events_per_batch:float prop ->
  ?preferred_batch_size_in_kilobytes:float prop ->
  function_id:string prop ->
  unit ->
  azure_function_endpoint

type dead_letter_identity

val dead_letter_identity :
  ?user_assigned_identity:string prop ->
  type_:string prop ->
  unit ->
  dead_letter_identity

type delivery_identity

val delivery_identity :
  ?user_assigned_identity:string prop ->
  type_:string prop ->
  unit ->
  delivery_identity

type delivery_property

val delivery_property :
  ?secret:bool prop ->
  ?source_field:string prop ->
  ?value:string prop ->
  header_name:string prop ->
  type_:string prop ->
  unit ->
  delivery_property

type retry_policy

val retry_policy :
  event_time_to_live:float prop ->
  max_delivery_attempts:float prop ->
  unit ->
  retry_policy

type storage_blob_dead_letter_destination

val storage_blob_dead_letter_destination :
  storage_account_id:string prop ->
  storage_blob_container_name:string prop ->
  unit ->
  storage_blob_dead_letter_destination

type storage_queue_endpoint

val storage_queue_endpoint :
  ?queue_message_time_to_live_in_seconds:float prop ->
  queue_name:string prop ->
  storage_account_id:string prop ->
  unit ->
  storage_queue_endpoint

type subject_filter

val subject_filter :
  ?case_sensitive:bool prop ->
  ?subject_begins_with:string prop ->
  ?subject_ends_with:string prop ->
  unit ->
  subject_filter

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type webhook_endpoint

val webhook_endpoint :
  ?active_directory_app_id_or_uri:string prop ->
  ?active_directory_tenant_id:string prop ->
  ?max_events_per_batch:float prop ->
  ?preferred_batch_size_in_kilobytes:float prop ->
  url:string prop ->
  unit ->
  webhook_endpoint

type azurerm_eventgrid_system_topic_event_subscription

val azurerm_eventgrid_system_topic_event_subscription :
  ?advanced_filtering_on_arrays_enabled:bool prop ->
  ?event_delivery_schema:string prop ->
  ?eventhub_endpoint_id:string prop ->
  ?expiration_time_utc:string prop ->
  ?hybrid_connection_endpoint_id:string prop ->
  ?id:string prop ->
  ?included_event_types:string prop list ->
  ?labels:string prop list ->
  ?service_bus_queue_endpoint_id:string prop ->
  ?service_bus_topic_endpoint_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  system_topic:string prop ->
  advanced_filter:advanced_filter list ->
  azure_function_endpoint:azure_function_endpoint list ->
  dead_letter_identity:dead_letter_identity list ->
  delivery_identity:delivery_identity list ->
  delivery_property:delivery_property list ->
  retry_policy:retry_policy list ->
  storage_blob_dead_letter_destination:
    storage_blob_dead_letter_destination list ->
  storage_queue_endpoint:storage_queue_endpoint list ->
  subject_filter:subject_filter list ->
  webhook_endpoint:webhook_endpoint list ->
  unit ->
  azurerm_eventgrid_system_topic_event_subscription

val yojson_of_azurerm_eventgrid_system_topic_event_subscription :
  azurerm_eventgrid_system_topic_event_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  advanced_filtering_on_arrays_enabled : bool prop;
  event_delivery_schema : string prop;
  eventhub_endpoint_id : string prop;
  expiration_time_utc : string prop;
  hybrid_connection_endpoint_id : string prop;
  id : string prop;
  included_event_types : string list prop;
  labels : string list prop;
  name : string prop;
  resource_group_name : string prop;
  service_bus_queue_endpoint_id : string prop;
  service_bus_topic_endpoint_id : string prop;
  system_topic : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?advanced_filtering_on_arrays_enabled:bool prop ->
  ?event_delivery_schema:string prop ->
  ?eventhub_endpoint_id:string prop ->
  ?expiration_time_utc:string prop ->
  ?hybrid_connection_endpoint_id:string prop ->
  ?id:string prop ->
  ?included_event_types:string prop list ->
  ?labels:string prop list ->
  ?service_bus_queue_endpoint_id:string prop ->
  ?service_bus_topic_endpoint_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  system_topic:string prop ->
  advanced_filter:advanced_filter list ->
  azure_function_endpoint:azure_function_endpoint list ->
  dead_letter_identity:dead_letter_identity list ->
  delivery_identity:delivery_identity list ->
  delivery_property:delivery_property list ->
  retry_policy:retry_policy list ->
  storage_blob_dead_letter_destination:
    storage_blob_dead_letter_destination list ->
  storage_queue_endpoint:storage_queue_endpoint list ->
  subject_filter:subject_filter list ->
  webhook_endpoint:webhook_endpoint list ->
  string ->
  t
