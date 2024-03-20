(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloud_to_device__feedback = {
  lock_duration : string prop option; [@option]  (** lock_duration *)
  max_delivery_count : float prop option; [@option]
      (** max_delivery_count *)
  time_to_live : string prop option; [@option]  (** time_to_live *)
}
[@@deriving yojson_of]
(** cloud_to_device__feedback *)

type cloud_to_device = {
  default_ttl : string prop option; [@option]  (** default_ttl *)
  max_delivery_count : float prop option; [@option]
      (** max_delivery_count *)
  feedback : cloud_to_device__feedback list;
}
[@@deriving yojson_of]
(** cloud_to_device *)

type fallback_route = {
  condition : string prop option; [@option]  (** condition *)
  enabled : bool prop option; [@option]  (** enabled *)
  endpoint_names : string prop list option; [@option]
      (** endpoint_names *)
  source : string prop option; [@option]  (** source *)
}
[@@deriving yojson_of]
(** fallback_route *)

type file_upload = {
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
(** file_upload *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type network_rule_set__ip_rule = {
  action : string prop option; [@option]  (** action *)
  ip_mask : string prop;  (** ip_mask *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** network_rule_set__ip_rule *)

type network_rule_set = {
  apply_to_builtin_eventhub_endpoint : bool prop option; [@option]
      (** apply_to_builtin_eventhub_endpoint *)
  default_action : string prop option; [@option]
      (** default_action *)
  ip_rule : network_rule_set__ip_rule list;
}
[@@deriving yojson_of]
(** network_rule_set *)

type sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** sku *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type endpoint = {
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

type enrichment = {
  endpoint_names : string prop list;  (** endpoint_names *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type route = {
  condition : string prop;  (** condition *)
  enabled : bool prop;  (** enabled *)
  endpoint_names : string prop list;  (** endpoint_names *)
  name : string prop;  (** name *)
  source : string prop;  (** source *)
}
[@@deriving yojson_of]

type shared_access_policy = {
  key_name : string prop;  (** key_name *)
  permissions : string prop;  (** permissions *)
  primary_key : string prop;  (** primary_key *)
  secondary_key : string prop;  (** secondary_key *)
}
[@@deriving yojson_of]

type azurerm_iothub = {
  endpoint : endpoint list option; [@option]  (** endpoint *)
  enrichment : enrichment list option; [@option]  (** enrichment *)
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
  route : route list option; [@option]  (** route *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  cloud_to_device : cloud_to_device list;
  fallback_route : fallback_route list;
  file_upload : file_upload list;
  identity : identity list;
  network_rule_set : network_rule_set list;
  sku : sku list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub *)

let cloud_to_device__feedback ?lock_duration ?max_delivery_count
    ?time_to_live () : cloud_to_device__feedback =
  { lock_duration; max_delivery_count; time_to_live }

let cloud_to_device ?default_ttl ?max_delivery_count ~feedback () :
    cloud_to_device =
  { default_ttl; max_delivery_count; feedback }

let fallback_route ?condition ?enabled ?endpoint_names ?source () :
    fallback_route =
  { condition; enabled; endpoint_names; source }

let file_upload ?authentication_type ?default_ttl ?identity_id
    ?lock_duration ?max_delivery_count ?notifications ?sas_ttl
    ~connection_string ~container_name () : file_upload =
  {
    authentication_type;
    connection_string;
    container_name;
    default_ttl;
    identity_id;
    lock_duration;
    max_delivery_count;
    notifications;
    sas_ttl;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_rule_set__ip_rule ?action ~ip_mask ~name () :
    network_rule_set__ip_rule =
  { action; ip_mask; name }

let network_rule_set ?apply_to_builtin_eventhub_endpoint
    ?default_action ~ip_rule () : network_rule_set =
  { apply_to_builtin_eventhub_endpoint; default_action; ip_rule }

let sku ~capacity ~name () : sku = { capacity; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub ?endpoint ?enrichment ?event_hub_partition_count
    ?event_hub_retention_in_days ?id ?local_authentication_enabled
    ?min_tls_version ?public_network_access_enabled ?route ?tags
    ?timeouts ~location ~name ~resource_group_name ~cloud_to_device
    ~fallback_route ~file_upload ~identity ~network_rule_set ~sku ()
    : azurerm_iothub =
  {
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

type t = {
  endpoint : endpoint list prop;
  enrichment : enrichment list prop;
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
  route : route list prop;
  shared_access_policy : shared_access_policy list prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

let make ?endpoint ?enrichment ?event_hub_partition_count
    ?event_hub_retention_in_days ?id ?local_authentication_enabled
    ?min_tls_version ?public_network_access_enabled ?route ?tags
    ?timeouts ~location ~name ~resource_group_name ~cloud_to_device
    ~fallback_route ~file_upload ~identity ~network_rule_set ~sku
    __id =
  let __type = "azurerm_iothub" in
  let __attrs =
    ({
       endpoint = Prop.computed __type __id "endpoint";
       enrichment = Prop.computed __type __id "enrichment";
       event_hub_events_endpoint =
         Prop.computed __type __id "event_hub_events_endpoint";
       event_hub_events_namespace =
         Prop.computed __type __id "event_hub_events_namespace";
       event_hub_events_path =
         Prop.computed __type __id "event_hub_events_path";
       event_hub_operations_endpoint =
         Prop.computed __type __id "event_hub_operations_endpoint";
       event_hub_operations_path =
         Prop.computed __type __id "event_hub_operations_path";
       event_hub_partition_count =
         Prop.computed __type __id "event_hub_partition_count";
       event_hub_retention_in_days =
         Prop.computed __type __id "event_hub_retention_in_days";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       local_authentication_enabled =
         Prop.computed __type __id "local_authentication_enabled";
       location = Prop.computed __type __id "location";
       min_tls_version = Prop.computed __type __id "min_tls_version";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       route = Prop.computed __type __id "route";
       shared_access_policy =
         Prop.computed __type __id "shared_access_policy";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub
        (azurerm_iothub ?endpoint ?enrichment
           ?event_hub_partition_count ?event_hub_retention_in_days
           ?id ?local_authentication_enabled ?min_tls_version
           ?public_network_access_enabled ?route ?tags ?timeouts
           ~location ~name ~resource_group_name ~cloud_to_device
           ~fallback_route ~file_upload ~identity ~network_rule_set
           ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?endpoint ?enrichment
    ?event_hub_partition_count ?event_hub_retention_in_days ?id
    ?local_authentication_enabled ?min_tls_version
    ?public_network_access_enabled ?route ?tags ?timeouts ~location
    ~name ~resource_group_name ~cloud_to_device ~fallback_route
    ~file_upload ~identity ~network_rule_set ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?endpoint ?enrichment ?event_hub_partition_count
      ?event_hub_retention_in_days ?id ?local_authentication_enabled
      ?min_tls_version ?public_network_access_enabled ?route ?tags
      ?timeouts ~location ~name ~resource_group_name ~cloud_to_device
      ~fallback_route ~file_upload ~identity ~network_rule_set ~sku
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
