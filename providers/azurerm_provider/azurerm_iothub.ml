(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub__cloud_to_device__feedback = {
  lock_duration : string option; [@option]  (** lock_duration *)
  max_delivery_count : float option; [@option]
      (** max_delivery_count *)
  time_to_live : string option; [@option]  (** time_to_live *)
}
[@@deriving yojson_of]
(** azurerm_iothub__cloud_to_device__feedback *)

type azurerm_iothub__cloud_to_device = {
  default_ttl : string option; [@option]  (** default_ttl *)
  max_delivery_count : float option; [@option]
      (** max_delivery_count *)
  feedback : azurerm_iothub__cloud_to_device__feedback list;
}
[@@deriving yojson_of]
(** azurerm_iothub__cloud_to_device *)

type azurerm_iothub__fallback_route = {
  condition : string option; [@option]  (** condition *)
  enabled : bool option; [@option]  (** enabled *)
  endpoint_names : string list option; [@option]
      (** endpoint_names *)
  source : string option; [@option]  (** source *)
}
[@@deriving yojson_of]
(** azurerm_iothub__fallback_route *)

type azurerm_iothub__file_upload = {
  authentication_type : string option; [@option]
      (** authentication_type *)
  connection_string : string;  (** connection_string *)
  container_name : string;  (** container_name *)
  default_ttl : string option; [@option]  (** default_ttl *)
  identity_id : string option; [@option]  (** identity_id *)
  lock_duration : string option; [@option]  (** lock_duration *)
  max_delivery_count : float option; [@option]
      (** max_delivery_count *)
  notifications : bool option; [@option]  (** notifications *)
  sas_ttl : string option; [@option]  (** sas_ttl *)
}
[@@deriving yojson_of]
(** azurerm_iothub__file_upload *)

type azurerm_iothub__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_iothub__identity *)

type azurerm_iothub__network_rule_set__ip_rule = {
  action : string option; [@option]  (** action *)
  ip_mask : string;  (** ip_mask *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_iothub__network_rule_set__ip_rule *)

type azurerm_iothub__network_rule_set = {
  apply_to_builtin_eventhub_endpoint : bool option; [@option]
      (** apply_to_builtin_eventhub_endpoint *)
  default_action : string option; [@option]  (** default_action *)
  ip_rule : azurerm_iothub__network_rule_set__ip_rule list;
}
[@@deriving yojson_of]
(** azurerm_iothub__network_rule_set *)

type azurerm_iothub__sku = {
  capacity : float;  (** capacity *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_iothub__sku *)

type azurerm_iothub__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub__timeouts *)

type azurerm_iothub__endpoint = {
  authentication_type : string;  (** authentication_type *)
  batch_frequency_in_seconds : float;
      (** batch_frequency_in_seconds *)
  connection_string : string;  (** connection_string *)
  container_name : string;  (** container_name *)
  encoding : string;  (** encoding *)
  endpoint_uri : string;  (** endpoint_uri *)
  entity_path : string;  (** entity_path *)
  file_name_format : string;  (** file_name_format *)
  identity_id : string;  (** identity_id *)
  max_chunk_size_in_bytes : float;  (** max_chunk_size_in_bytes *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_iothub__enrichment = {
  endpoint_names : string list;  (** endpoint_names *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type azurerm_iothub__route = {
  condition : string;  (** condition *)
  enabled : bool;  (** enabled *)
  endpoint_names : string list;  (** endpoint_names *)
  name : string;  (** name *)
  source : string;  (** source *)
}
[@@deriving yojson_of]

type azurerm_iothub__shared_access_policy = {
  key_name : string;  (** key_name *)
  permissions : string;  (** permissions *)
  primary_key : string;  (** primary_key *)
  secondary_key : string;  (** secondary_key *)
}
[@@deriving yojson_of]

type azurerm_iothub = {
  local_authentication_enabled : bool option; [@option]
      (** local_authentication_enabled *)
  location : string;  (** location *)
  min_tls_version : string option; [@option]  (** min_tls_version *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
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

let azurerm_iothub ?local_authentication_enabled ?min_tls_version
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~cloud_to_device ~fallback_route
    ~file_upload ~identity ~network_rule_set ~sku __resource_id =
  let __resource_type = "azurerm_iothub" in
  let __resource =
    {
      local_authentication_enabled;
      location;
      min_tls_version;
      name;
      public_network_access_enabled;
      resource_group_name;
      tags;
      cloud_to_device;
      fallback_route;
      file_upload;
      identity;
      network_rule_set;
      sku;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub __resource);
  ()
