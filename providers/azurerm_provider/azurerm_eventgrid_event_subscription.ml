(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_eventgrid_event_subscription__advanced_filter__bool_equals = {
  key : string;  (** key *)
  value : bool;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__bool_equals *)

type azurerm_eventgrid_event_subscription__advanced_filter__is_not_null = {
  key : string;  (** key *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__is_not_null *)

type azurerm_eventgrid_event_subscription__advanced_filter__is_null_or_undefined = {
  key : string;  (** key *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__is_null_or_undefined *)

type azurerm_eventgrid_event_subscription__advanced_filter__number_greater_than = {
  key : string;  (** key *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__number_greater_than *)

type azurerm_eventgrid_event_subscription__advanced_filter__number_greater_than_or_equals = {
  key : string;  (** key *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__number_greater_than_or_equals *)

type azurerm_eventgrid_event_subscription__advanced_filter__number_in = {
  key : string;  (** key *)
  values : float list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__number_in *)

type azurerm_eventgrid_event_subscription__advanced_filter__number_in_range = {
  key : string;  (** key *)
  values : float list list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__number_in_range *)

type azurerm_eventgrid_event_subscription__advanced_filter__number_less_than = {
  key : string;  (** key *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__number_less_than *)

type azurerm_eventgrid_event_subscription__advanced_filter__number_less_than_or_equals = {
  key : string;  (** key *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__number_less_than_or_equals *)

type azurerm_eventgrid_event_subscription__advanced_filter__number_not_in = {
  key : string;  (** key *)
  values : float list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__number_not_in *)

type azurerm_eventgrid_event_subscription__advanced_filter__number_not_in_range = {
  key : string;  (** key *)
  values : float list list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__number_not_in_range *)

type azurerm_eventgrid_event_subscription__advanced_filter__string_begins_with = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__string_begins_with *)

type azurerm_eventgrid_event_subscription__advanced_filter__string_contains = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__string_contains *)

type azurerm_eventgrid_event_subscription__advanced_filter__string_ends_with = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__string_ends_with *)

type azurerm_eventgrid_event_subscription__advanced_filter__string_in = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__string_in *)

type azurerm_eventgrid_event_subscription__advanced_filter__string_not_begins_with = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__string_not_begins_with *)

type azurerm_eventgrid_event_subscription__advanced_filter__string_not_contains = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__string_not_contains *)

type azurerm_eventgrid_event_subscription__advanced_filter__string_not_ends_with = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__string_not_ends_with *)

type azurerm_eventgrid_event_subscription__advanced_filter__string_not_in = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter__string_not_in *)

type azurerm_eventgrid_event_subscription__advanced_filter = {
  bool_equals :
    azurerm_eventgrid_event_subscription__advanced_filter__bool_equals
    list;
  is_not_null :
    azurerm_eventgrid_event_subscription__advanced_filter__is_not_null
    list;
  is_null_or_undefined :
    azurerm_eventgrid_event_subscription__advanced_filter__is_null_or_undefined
    list;
  number_greater_than :
    azurerm_eventgrid_event_subscription__advanced_filter__number_greater_than
    list;
  number_greater_than_or_equals :
    azurerm_eventgrid_event_subscription__advanced_filter__number_greater_than_or_equals
    list;
  number_in :
    azurerm_eventgrid_event_subscription__advanced_filter__number_in
    list;
  number_in_range :
    azurerm_eventgrid_event_subscription__advanced_filter__number_in_range
    list;
  number_less_than :
    azurerm_eventgrid_event_subscription__advanced_filter__number_less_than
    list;
  number_less_than_or_equals :
    azurerm_eventgrid_event_subscription__advanced_filter__number_less_than_or_equals
    list;
  number_not_in :
    azurerm_eventgrid_event_subscription__advanced_filter__number_not_in
    list;
  number_not_in_range :
    azurerm_eventgrid_event_subscription__advanced_filter__number_not_in_range
    list;
  string_begins_with :
    azurerm_eventgrid_event_subscription__advanced_filter__string_begins_with
    list;
  string_contains :
    azurerm_eventgrid_event_subscription__advanced_filter__string_contains
    list;
  string_ends_with :
    azurerm_eventgrid_event_subscription__advanced_filter__string_ends_with
    list;
  string_in :
    azurerm_eventgrid_event_subscription__advanced_filter__string_in
    list;
  string_not_begins_with :
    azurerm_eventgrid_event_subscription__advanced_filter__string_not_begins_with
    list;
  string_not_contains :
    azurerm_eventgrid_event_subscription__advanced_filter__string_not_contains
    list;
  string_not_ends_with :
    azurerm_eventgrid_event_subscription__advanced_filter__string_not_ends_with
    list;
  string_not_in :
    azurerm_eventgrid_event_subscription__advanced_filter__string_not_in
    list;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__advanced_filter *)

type azurerm_eventgrid_event_subscription__azure_function_endpoint = {
  function_id : string;  (** function_id *)
  max_events_per_batch : float option; [@option]
      (** max_events_per_batch *)
  preferred_batch_size_in_kilobytes : float option; [@option]
      (** preferred_batch_size_in_kilobytes *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__azure_function_endpoint *)

type azurerm_eventgrid_event_subscription__dead_letter_identity = {
  type_ : string; [@key "type"]  (** type *)
  user_assigned_identity : string option; [@option]
      (** user_assigned_identity *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__dead_letter_identity *)

type azurerm_eventgrid_event_subscription__delivery_identity = {
  type_ : string; [@key "type"]  (** type *)
  user_assigned_identity : string option; [@option]
      (** user_assigned_identity *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__delivery_identity *)

type azurerm_eventgrid_event_subscription__delivery_property = {
  header_name : string;  (** header_name *)
  secret : bool option; [@option]  (** secret *)
  source_field : string option; [@option]  (** source_field *)
  type_ : string; [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__delivery_property *)

type azurerm_eventgrid_event_subscription__retry_policy = {
  event_time_to_live : float;  (** event_time_to_live *)
  max_delivery_attempts : float;  (** max_delivery_attempts *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__retry_policy *)

type azurerm_eventgrid_event_subscription__storage_blob_dead_letter_destination = {
  storage_account_id : string;  (** storage_account_id *)
  storage_blob_container_name : string;
      (** storage_blob_container_name *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__storage_blob_dead_letter_destination *)

type azurerm_eventgrid_event_subscription__storage_queue_endpoint = {
  queue_message_time_to_live_in_seconds : float option; [@option]
      (** queue_message_time_to_live_in_seconds *)
  queue_name : string;  (** queue_name *)
  storage_account_id : string;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__storage_queue_endpoint *)

type azurerm_eventgrid_event_subscription__subject_filter = {
  case_sensitive : bool option; [@option]  (** case_sensitive *)
  subject_begins_with : string option; [@option]
      (** subject_begins_with *)
  subject_ends_with : string option; [@option]
      (** subject_ends_with *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__subject_filter *)

type azurerm_eventgrid_event_subscription__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__timeouts *)

type azurerm_eventgrid_event_subscription__webhook_endpoint = {
  active_directory_app_id_or_uri : string option; [@option]
      (** active_directory_app_id_or_uri *)
  active_directory_tenant_id : string option; [@option]
      (** active_directory_tenant_id *)
  base_url : string;  (** base_url *)
  max_events_per_batch : float option; [@option]
      (** max_events_per_batch *)
  preferred_batch_size_in_kilobytes : float option; [@option]
      (** preferred_batch_size_in_kilobytes *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription__webhook_endpoint *)

type azurerm_eventgrid_event_subscription = {
  advanced_filtering_on_arrays_enabled : bool option; [@option]
      (** advanced_filtering_on_arrays_enabled *)
  event_delivery_schema : string option; [@option]
      (** event_delivery_schema *)
  expiration_time_utc : string option; [@option]
      (** expiration_time_utc *)
  labels : string list option; [@option]  (** labels *)
  name : string;  (** name *)
  scope : string;  (** scope *)
  service_bus_queue_endpoint_id : string option; [@option]
      (** service_bus_queue_endpoint_id *)
  service_bus_topic_endpoint_id : string option; [@option]
      (** service_bus_topic_endpoint_id *)
  advanced_filter :
    azurerm_eventgrid_event_subscription__advanced_filter list;
  azure_function_endpoint :
    azurerm_eventgrid_event_subscription__azure_function_endpoint
    list;
  dead_letter_identity :
    azurerm_eventgrid_event_subscription__dead_letter_identity list;
  delivery_identity :
    azurerm_eventgrid_event_subscription__delivery_identity list;
  delivery_property :
    azurerm_eventgrid_event_subscription__delivery_property list;
  retry_policy :
    azurerm_eventgrid_event_subscription__retry_policy list;
  storage_blob_dead_letter_destination :
    azurerm_eventgrid_event_subscription__storage_blob_dead_letter_destination
    list;
  storage_queue_endpoint :
    azurerm_eventgrid_event_subscription__storage_queue_endpoint list;
  subject_filter :
    azurerm_eventgrid_event_subscription__subject_filter list;
  timeouts : azurerm_eventgrid_event_subscription__timeouts option;
  webhook_endpoint :
    azurerm_eventgrid_event_subscription__webhook_endpoint list;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription *)

let azurerm_eventgrid_event_subscription
    ?advanced_filtering_on_arrays_enabled ?event_delivery_schema
    ?expiration_time_utc ?labels ?service_bus_queue_endpoint_id
    ?service_bus_topic_endpoint_id ?timeouts ~name ~scope
    ~advanced_filter ~azure_function_endpoint ~dead_letter_identity
    ~delivery_identity ~delivery_property ~retry_policy
    ~storage_blob_dead_letter_destination ~storage_queue_endpoint
    ~subject_filter ~webhook_endpoint __resource_id =
  let __resource_type = "azurerm_eventgrid_event_subscription" in
  let __resource =
    {
      advanced_filtering_on_arrays_enabled;
      event_delivery_schema;
      expiration_time_utc;
      labels;
      name;
      scope;
      service_bus_queue_endpoint_id;
      service_bus_topic_endpoint_id;
      advanced_filter;
      azure_function_endpoint;
      dead_letter_identity;
      delivery_identity;
      delivery_property;
      retry_policy;
      storage_blob_dead_letter_destination;
      storage_queue_endpoint;
      subject_filter;
      timeouts;
      webhook_endpoint;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventgrid_event_subscription __resource);
  ()