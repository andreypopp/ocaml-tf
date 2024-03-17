(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub__cloud_to_device__feedback = {
  lock_duration : string prop option; [@option]  (** lock_duration *)
  max_delivery_count : float prop option; [@option]
      (** max_delivery_count *)
  time_to_live : string prop option; [@option]  (** time_to_live *)
}
[@@deriving yojson_of]
(** azurerm_iothub__cloud_to_device__feedback *)

type azurerm_iothub__cloud_to_device = {
  default_ttl : string prop option; [@option]  (** default_ttl *)
  max_delivery_count : float prop option; [@option]
      (** max_delivery_count *)
  feedback : azurerm_iothub__cloud_to_device__feedback list;
}
[@@deriving yojson_of]
(** azurerm_iothub__cloud_to_device *)

type azurerm_iothub__fallback_route = {
  condition : string prop option; [@option]  (** condition *)
  enabled : bool prop option; [@option]  (** enabled *)
  endpoint_names : string prop list option; [@option]
      (** endpoint_names *)
  source : string prop option; [@option]  (** source *)
}
[@@deriving yojson_of]
(** azurerm_iothub__fallback_route *)

type azurerm_iothub__file_upload = {
  authentication_type : string prop option; [@option]
      (** authentication_type *)
  connection_string : string prop;  (** connection_string *)
  container_name : string prop;  (** container_name *)
  default_ttl : string prop option; [@option]  (** default_ttl *)
  identity_id : string prop option; [@option]  (** identity_id *)
  lock_duration : string prop option; [@option]  (** lock_duration *)
  max_delivery_count : float prop option; [@option]
      (** max_delivery_count *)
  notifications : bool prop option; [@option]  (** notifications *)
  sas_ttl : string prop option; [@option]  (** sas_ttl *)
}
[@@deriving yojson_of]
(** azurerm_iothub__file_upload *)

type azurerm_iothub__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_iothub__identity *)

type azurerm_iothub__network_rule_set__ip_rule = {
  action : string prop option; [@option]  (** action *)
  ip_mask : string prop;  (** ip_mask *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_iothub__network_rule_set__ip_rule *)

type azurerm_iothub__network_rule_set = {
  apply_to_builtin_eventhub_endpoint : bool prop option; [@option]
      (** apply_to_builtin_eventhub_endpoint *)
  default_action : string prop option; [@option]
      (** default_action *)
  ip_rule : azurerm_iothub__network_rule_set__ip_rule list;
}
[@@deriving yojson_of]
(** azurerm_iothub__network_rule_set *)

type azurerm_iothub__sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_iothub__sku *)

type azurerm_iothub__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub__timeouts *)

type azurerm_iothub__endpoint = {
  authentication_type : string prop;  (** authentication_type *)
  batch_frequency_in_seconds : float prop;
      (** batch_frequency_in_seconds *)
  connection_string : string prop;  (** connection_string *)
  container_name : string prop;  (** container_name *)
  encoding : string prop;  (** encoding *)
  endpoint_uri : string prop;  (** endpoint_uri *)
  entity_path : string prop;  (** entity_path *)
  file_name_format : string prop;  (** file_name_format *)
  identity_id : string prop;  (** identity_id *)
  max_chunk_size_in_bytes : float prop;
      (** max_chunk_size_in_bytes *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_iothub__enrichment = {
  endpoint_names : string prop list;  (** endpoint_names *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type azurerm_iothub__route = {
  condition : string prop;  (** condition *)
  enabled : bool prop;  (** enabled *)
  endpoint_names : string prop list;  (** endpoint_names *)
  name : string prop;  (** name *)
  source : string prop;  (** source *)
}
[@@deriving yojson_of]

type azurerm_iothub__shared_access_policy = {
  key_name : string prop;  (** key_name *)
  permissions : string prop;  (** permissions *)
  primary_key : string prop;  (** primary_key *)
  secondary_key : string prop;  (** secondary_key *)
}
[@@deriving yojson_of]

type azurerm_iothub = {
  endpoint : azurerm_iothub__endpoint list option; [@option]
      (** endpoint *)
  enrichment : azurerm_iothub__enrichment list option; [@option]
      (** enrichment *)
  event_hub_partition_count : float prop option; [@option]
      (** event_hub_partition_count *)
  event_hub_retention_in_days : float prop option; [@option]
      (** event_hub_retention_in_days *)
  id : string prop option; [@option]  (** id *)
  local_authentication_enabled : bool prop option; [@option]
      (** local_authentication_enabled *)
  location : string prop;  (** location *)
  min_tls_version : string prop option; [@option]
      (** min_tls_version *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  route : azurerm_iothub__route list option; [@option]  (** route *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  cloud_to_device : azurerm_iothub__cloud_to_device list;
  fallback_route : azurerm_iothub__fallback_route list;
  file_upload : azurerm_iothub__file_upload list;
  identity : azurerm_iothub__identity list;
  network_rule_set : azurerm_iothub__network_rule_set list;
  sku : azurerm_iothub__sku list;
  timeouts : azurerm_iothub__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub *)

type t = {
  endpoint : azurerm_iothub__endpoint list prop;
  enrichment : azurerm_iothub__enrichment list prop;
  event_hub_events_endpoint : string prop;
  event_hub_events_namespace : string prop;
  event_hub_events_path : string prop;
  event_hub_operations_endpoint : string prop;
  event_hub_operations_path : string prop;
  event_hub_partition_count : float prop;
  event_hub_retention_in_days : float prop;
  hostname : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  min_tls_version : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  route : azurerm_iothub__route list prop;
  shared_access_policy :
    azurerm_iothub__shared_access_policy list prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

let azurerm_iothub ?endpoint ?enrichment ?event_hub_partition_count
    ?event_hub_retention_in_days ?id ?local_authentication_enabled
    ?min_tls_version ?public_network_access_enabled ?route ?tags
    ?timeouts ~location ~name ~resource_group_name ~cloud_to_device
    ~fallback_route ~file_upload ~identity ~network_rule_set ~sku
    __resource_id =
  let __resource_type = "azurerm_iothub" in
  let __resource =
    ({
       endpoint;
       enrichment;
       event_hub_partition_count;
       event_hub_retention_in_days;
       id;
       local_authentication_enabled;
       location;
       min_tls_version;
       name;
       public_network_access_enabled;
       resource_group_name;
       route;
       tags;
       cloud_to_device;
       fallback_route;
       file_upload;
       identity;
       network_rule_set;
       sku;
       timeouts;
     }
      : azurerm_iothub)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub __resource);
  let __resource_attributes =
    ({
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       enrichment =
         Prop.computed __resource_type __resource_id "enrichment";
       event_hub_events_endpoint =
         Prop.computed __resource_type __resource_id
           "event_hub_events_endpoint";
       event_hub_events_namespace =
         Prop.computed __resource_type __resource_id
           "event_hub_events_namespace";
       event_hub_events_path =
         Prop.computed __resource_type __resource_id
           "event_hub_events_path";
       event_hub_operations_endpoint =
         Prop.computed __resource_type __resource_id
           "event_hub_operations_endpoint";
       event_hub_operations_path =
         Prop.computed __resource_type __resource_id
           "event_hub_operations_path";
       event_hub_partition_count =
         Prop.computed __resource_type __resource_id
           "event_hub_partition_count";
       event_hub_retention_in_days =
         Prop.computed __resource_type __resource_id
           "event_hub_retention_in_days";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       local_authentication_enabled =
         Prop.computed __resource_type __resource_id
           "local_authentication_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       min_tls_version =
         Prop.computed __resource_type __resource_id
           "min_tls_version";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       route = Prop.computed __resource_type __resource_id "route";
       shared_access_policy =
         Prop.computed __resource_type __resource_id
           "shared_access_policy";
       tags = Prop.computed __resource_type __resource_id "tags";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
