(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type advanced_filter__bool_equals = {
  key : string prop;  (** key *)
  value : bool prop;  (** value *)
}
[@@deriving yojson_of]
(** advanced_filter__bool_equals *)

type advanced_filter__is_not_null = { key : string prop  (** key *) }
[@@deriving yojson_of]
(** advanced_filter__is_not_null *)

type advanced_filter__is_null_or_undefined = {
  key : string prop;  (** key *)
}
[@@deriving yojson_of]
(** advanced_filter__is_null_or_undefined *)

type advanced_filter__number_greater_than = {
  key : string prop;  (** key *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** advanced_filter__number_greater_than *)

type advanced_filter__number_greater_than_or_equals = {
  key : string prop;  (** key *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** advanced_filter__number_greater_than_or_equals *)

type advanced_filter__number_in = {
  key : string prop;  (** key *)
  values : float prop list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__number_in *)

type advanced_filter__number_in_range = {
  key : string prop;  (** key *)
  values : float prop list list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__number_in_range *)

type advanced_filter__number_less_than = {
  key : string prop;  (** key *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** advanced_filter__number_less_than *)

type advanced_filter__number_less_than_or_equals = {
  key : string prop;  (** key *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** advanced_filter__number_less_than_or_equals *)

type advanced_filter__number_not_in = {
  key : string prop;  (** key *)
  values : float prop list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__number_not_in *)

type advanced_filter__number_not_in_range = {
  key : string prop;  (** key *)
  values : float prop list list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__number_not_in_range *)

type advanced_filter__string_begins_with = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__string_begins_with *)

type advanced_filter__string_contains = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__string_contains *)

type advanced_filter__string_ends_with = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__string_ends_with *)

type advanced_filter__string_in = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__string_in *)

type advanced_filter__string_not_begins_with = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__string_not_begins_with *)

type advanced_filter__string_not_contains = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__string_not_contains *)

type advanced_filter__string_not_ends_with = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__string_not_ends_with *)

type advanced_filter__string_not_in = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** advanced_filter__string_not_in *)

type advanced_filter = {
  bool_equals : advanced_filter__bool_equals list;
  is_not_null : advanced_filter__is_not_null list;
  is_null_or_undefined : advanced_filter__is_null_or_undefined list;
  number_greater_than : advanced_filter__number_greater_than list;
  number_greater_than_or_equals :
    advanced_filter__number_greater_than_or_equals list;
  number_in : advanced_filter__number_in list;
  number_in_range : advanced_filter__number_in_range list;
  number_less_than : advanced_filter__number_less_than list;
  number_less_than_or_equals :
    advanced_filter__number_less_than_or_equals list;
  number_not_in : advanced_filter__number_not_in list;
  number_not_in_range : advanced_filter__number_not_in_range list;
  string_begins_with : advanced_filter__string_begins_with list;
  string_contains : advanced_filter__string_contains list;
  string_ends_with : advanced_filter__string_ends_with list;
  string_in : advanced_filter__string_in list;
  string_not_begins_with :
    advanced_filter__string_not_begins_with list;
  string_not_contains : advanced_filter__string_not_contains list;
  string_not_ends_with : advanced_filter__string_not_ends_with list;
  string_not_in : advanced_filter__string_not_in list;
}
[@@deriving yojson_of]
(** advanced_filter *)

type azure_function_endpoint = {
  function_id : string prop;  (** function_id *)
  max_events_per_batch : float prop option; [@option]
      (** max_events_per_batch *)
  preferred_batch_size_in_kilobytes : float prop option; [@option]
      (** preferred_batch_size_in_kilobytes *)
}
[@@deriving yojson_of]
(** azure_function_endpoint *)

type dead_letter_identity = {
  type_ : string prop; [@key "type"]  (** type *)
  user_assigned_identity : string prop option; [@option]
      (** user_assigned_identity *)
}
[@@deriving yojson_of]
(** dead_letter_identity *)

type delivery_identity = {
  type_ : string prop; [@key "type"]  (** type *)
  user_assigned_identity : string prop option; [@option]
      (** user_assigned_identity *)
}
[@@deriving yojson_of]
(** delivery_identity *)

type delivery_property = {
  header_name : string prop;  (** header_name *)
  secret : bool prop option; [@option]  (** secret *)
  source_field : string prop option; [@option]  (** source_field *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** delivery_property *)

type retry_policy = {
  event_time_to_live : float prop;  (** event_time_to_live *)
  max_delivery_attempts : float prop;  (** max_delivery_attempts *)
}
[@@deriving yojson_of]
(** retry_policy *)

type storage_blob_dead_letter_destination = {
  storage_account_id : string prop;  (** storage_account_id *)
  storage_blob_container_name : string prop;
      (** storage_blob_container_name *)
}
[@@deriving yojson_of]
(** storage_blob_dead_letter_destination *)

type storage_queue_endpoint = {
  queue_message_time_to_live_in_seconds : float prop option;
      [@option]
      (** queue_message_time_to_live_in_seconds *)
  queue_name : string prop;  (** queue_name *)
  storage_account_id : string prop;  (** storage_account_id *)
}
[@@deriving yojson_of]
(** storage_queue_endpoint *)

type subject_filter = {
  case_sensitive : bool prop option; [@option]  (** case_sensitive *)
  subject_begins_with : string prop option; [@option]
      (** subject_begins_with *)
  subject_ends_with : string prop option; [@option]
      (** subject_ends_with *)
}
[@@deriving yojson_of]
(** subject_filter *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type webhook_endpoint = {
  active_directory_app_id_or_uri : string prop option; [@option]
      (** active_directory_app_id_or_uri *)
  active_directory_tenant_id : string prop option; [@option]
      (** active_directory_tenant_id *)
  max_events_per_batch : float prop option; [@option]
      (** max_events_per_batch *)
  preferred_batch_size_in_kilobytes : float prop option; [@option]
      (** preferred_batch_size_in_kilobytes *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** webhook_endpoint *)

type azurerm_eventgrid_event_subscription = {
  advanced_filtering_on_arrays_enabled : bool prop option; [@option]
      (** advanced_filtering_on_arrays_enabled *)
  event_delivery_schema : string prop option; [@option]
      (** event_delivery_schema *)
  eventhub_endpoint_id : string prop option; [@option]
      (** eventhub_endpoint_id *)
  expiration_time_utc : string prop option; [@option]
      (** expiration_time_utc *)
  hybrid_connection_endpoint_id : string prop option; [@option]
      (** hybrid_connection_endpoint_id *)
  id : string prop option; [@option]  (** id *)
  included_event_types : string prop list option; [@option]
      (** included_event_types *)
  labels : string prop list option; [@option]  (** labels *)
  name : string prop;  (** name *)
  scope : string prop;  (** scope *)
  service_bus_queue_endpoint_id : string prop option; [@option]
      (** service_bus_queue_endpoint_id *)
  service_bus_topic_endpoint_id : string prop option; [@option]
      (** service_bus_topic_endpoint_id *)
  advanced_filter : advanced_filter list;
  azure_function_endpoint : azure_function_endpoint list;
  dead_letter_identity : dead_letter_identity list;
  delivery_identity : delivery_identity list;
  delivery_property : delivery_property list;
  retry_policy : retry_policy list;
  storage_blob_dead_letter_destination :
    storage_blob_dead_letter_destination list;
  storage_queue_endpoint : storage_queue_endpoint list;
  subject_filter : subject_filter list;
  timeouts : timeouts option;
  webhook_endpoint : webhook_endpoint list;
}
[@@deriving yojson_of]
(** azurerm_eventgrid_event_subscription *)

let advanced_filter__bool_equals ~key ~value () :
    advanced_filter__bool_equals =
  { key; value }

let advanced_filter__is_not_null ~key () :
    advanced_filter__is_not_null =
  { key }

let advanced_filter__is_null_or_undefined ~key () :
    advanced_filter__is_null_or_undefined =
  { key }

let advanced_filter__number_greater_than ~key ~value () :
    advanced_filter__number_greater_than =
  { key; value }

let advanced_filter__number_greater_than_or_equals ~key ~value () :
    advanced_filter__number_greater_than_or_equals =
  { key; value }

let advanced_filter__number_in ~key ~values () :
    advanced_filter__number_in =
  { key; values }

let advanced_filter__number_in_range ~key ~values () :
    advanced_filter__number_in_range =
  { key; values }

let advanced_filter__number_less_than ~key ~value () :
    advanced_filter__number_less_than =
  { key; value }

let advanced_filter__number_less_than_or_equals ~key ~value () :
    advanced_filter__number_less_than_or_equals =
  { key; value }

let advanced_filter__number_not_in ~key ~values () :
    advanced_filter__number_not_in =
  { key; values }

let advanced_filter__number_not_in_range ~key ~values () :
    advanced_filter__number_not_in_range =
  { key; values }

let advanced_filter__string_begins_with ~key ~values () :
    advanced_filter__string_begins_with =
  { key; values }

let advanced_filter__string_contains ~key ~values () :
    advanced_filter__string_contains =
  { key; values }

let advanced_filter__string_ends_with ~key ~values () :
    advanced_filter__string_ends_with =
  { key; values }

let advanced_filter__string_in ~key ~values () :
    advanced_filter__string_in =
  { key; values }

let advanced_filter__string_not_begins_with ~key ~values () :
    advanced_filter__string_not_begins_with =
  { key; values }

let advanced_filter__string_not_contains ~key ~values () :
    advanced_filter__string_not_contains =
  { key; values }

let advanced_filter__string_not_ends_with ~key ~values () :
    advanced_filter__string_not_ends_with =
  { key; values }

let advanced_filter__string_not_in ~key ~values () :
    advanced_filter__string_not_in =
  { key; values }

let advanced_filter ~bool_equals ~is_not_null ~is_null_or_undefined
    ~number_greater_than ~number_greater_than_or_equals ~number_in
    ~number_in_range ~number_less_than ~number_less_than_or_equals
    ~number_not_in ~number_not_in_range ~string_begins_with
    ~string_contains ~string_ends_with ~string_in
    ~string_not_begins_with ~string_not_contains
    ~string_not_ends_with ~string_not_in () : advanced_filter =
  {
    bool_equals;
    is_not_null;
    is_null_or_undefined;
    number_greater_than;
    number_greater_than_or_equals;
    number_in;
    number_in_range;
    number_less_than;
    number_less_than_or_equals;
    number_not_in;
    number_not_in_range;
    string_begins_with;
    string_contains;
    string_ends_with;
    string_in;
    string_not_begins_with;
    string_not_contains;
    string_not_ends_with;
    string_not_in;
  }

let azure_function_endpoint ?max_events_per_batch
    ?preferred_batch_size_in_kilobytes ~function_id () :
    azure_function_endpoint =
  {
    function_id;
    max_events_per_batch;
    preferred_batch_size_in_kilobytes;
  }

let dead_letter_identity ?user_assigned_identity ~type_ () :
    dead_letter_identity =
  { type_; user_assigned_identity }

let delivery_identity ?user_assigned_identity ~type_ () :
    delivery_identity =
  { type_; user_assigned_identity }

let delivery_property ?secret ?source_field ?value ~header_name
    ~type_ () : delivery_property =
  { header_name; secret; source_field; type_; value }

let retry_policy ~event_time_to_live ~max_delivery_attempts () :
    retry_policy =
  { event_time_to_live; max_delivery_attempts }

let storage_blob_dead_letter_destination ~storage_account_id
    ~storage_blob_container_name () :
    storage_blob_dead_letter_destination =
  { storage_account_id; storage_blob_container_name }

let storage_queue_endpoint ?queue_message_time_to_live_in_seconds
    ~queue_name ~storage_account_id () : storage_queue_endpoint =
  {
    queue_message_time_to_live_in_seconds;
    queue_name;
    storage_account_id;
  }

let subject_filter ?case_sensitive ?subject_begins_with
    ?subject_ends_with () : subject_filter =
  { case_sensitive; subject_begins_with; subject_ends_with }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let webhook_endpoint ?active_directory_app_id_or_uri
    ?active_directory_tenant_id ?max_events_per_batch
    ?preferred_batch_size_in_kilobytes ~url () : webhook_endpoint =
  {
    active_directory_app_id_or_uri;
    active_directory_tenant_id;
    max_events_per_batch;
    preferred_batch_size_in_kilobytes;
    url;
  }

let azurerm_eventgrid_event_subscription
    ?advanced_filtering_on_arrays_enabled ?event_delivery_schema
    ?eventhub_endpoint_id ?expiration_time_utc
    ?hybrid_connection_endpoint_id ?id ?included_event_types ?labels
    ?service_bus_queue_endpoint_id ?service_bus_topic_endpoint_id
    ?timeouts ~name ~scope ~advanced_filter ~azure_function_endpoint
    ~dead_letter_identity ~delivery_identity ~delivery_property
    ~retry_policy ~storage_blob_dead_letter_destination
    ~storage_queue_endpoint ~subject_filter ~webhook_endpoint () :
    azurerm_eventgrid_event_subscription =
  {
    advanced_filtering_on_arrays_enabled;
    event_delivery_schema;
    eventhub_endpoint_id;
    expiration_time_utc;
    hybrid_connection_endpoint_id;
    id;
    included_event_types;
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

type t = {
  advanced_filtering_on_arrays_enabled : bool prop;
  event_delivery_schema : string prop;
  eventhub_endpoint_id : string prop;
  expiration_time_utc : string prop;
  hybrid_connection_endpoint_id : string prop;
  id : string prop;
  included_event_types : string list prop;
  labels : string list prop;
  name : string prop;
  scope : string prop;
  service_bus_queue_endpoint_id : string prop;
  service_bus_topic_endpoint_id : string prop;
}

let register ?tf_module ?advanced_filtering_on_arrays_enabled
    ?event_delivery_schema ?eventhub_endpoint_id ?expiration_time_utc
    ?hybrid_connection_endpoint_id ?id ?included_event_types ?labels
    ?service_bus_queue_endpoint_id ?service_bus_topic_endpoint_id
    ?timeouts ~name ~scope ~advanced_filter ~azure_function_endpoint
    ~dead_letter_identity ~delivery_identity ~delivery_property
    ~retry_policy ~storage_blob_dead_letter_destination
    ~storage_queue_endpoint ~subject_filter ~webhook_endpoint
    __resource_id =
  let __resource_type = "azurerm_eventgrid_event_subscription" in
  let __resource =
    azurerm_eventgrid_event_subscription
      ?advanced_filtering_on_arrays_enabled ?event_delivery_schema
      ?eventhub_endpoint_id ?expiration_time_utc
      ?hybrid_connection_endpoint_id ?id ?included_event_types
      ?labels ?service_bus_queue_endpoint_id
      ?service_bus_topic_endpoint_id ?timeouts ~name ~scope
      ~advanced_filter ~azure_function_endpoint ~dead_letter_identity
      ~delivery_identity ~delivery_property ~retry_policy
      ~storage_blob_dead_letter_destination ~storage_queue_endpoint
      ~subject_filter ~webhook_endpoint ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventgrid_event_subscription __resource);
  let __resource_attributes =
    ({
       advanced_filtering_on_arrays_enabled =
         Prop.computed __resource_type __resource_id
           "advanced_filtering_on_arrays_enabled";
       event_delivery_schema =
         Prop.computed __resource_type __resource_id
           "event_delivery_schema";
       eventhub_endpoint_id =
         Prop.computed __resource_type __resource_id
           "eventhub_endpoint_id";
       expiration_time_utc =
         Prop.computed __resource_type __resource_id
           "expiration_time_utc";
       hybrid_connection_endpoint_id =
         Prop.computed __resource_type __resource_id
           "hybrid_connection_endpoint_id";
       id = Prop.computed __resource_type __resource_id "id";
       included_event_types =
         Prop.computed __resource_type __resource_id
           "included_event_types";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       scope = Prop.computed __resource_type __resource_id "scope";
       service_bus_queue_endpoint_id =
         Prop.computed __resource_type __resource_id
           "service_bus_queue_endpoint_id";
       service_bus_topic_endpoint_id =
         Prop.computed __resource_type __resource_id
           "service_bus_topic_endpoint_id";
     }
      : t)
  in
  __resource_attributes
