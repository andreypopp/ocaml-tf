(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type retention_policy = {
  days : float prop;  (** days *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** retention_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type traffic_analytics = {
  enabled : bool prop;  (** enabled *)
  interval_in_minutes : float prop option; [@option]
      (** interval_in_minutes *)
  workspace_id : string prop;  (** workspace_id *)
  workspace_region : string prop;  (** workspace_region *)
  workspace_resource_id : string prop;  (** workspace_resource_id *)
}
[@@deriving yojson_of]
(** traffic_analytics *)

type azurerm_network_watcher_flow_log = {
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  name : string prop;  (** name *)
  network_security_group_id : string prop;
      (** network_security_group_id *)
  network_watcher_name : string prop;  (** network_watcher_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_id : string prop;  (** storage_account_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  version : float prop option; [@option]  (** version *)
  retention_policy : retention_policy list;
  timeouts : timeouts option;
  traffic_analytics : traffic_analytics list;
}
[@@deriving yojson_of]
(** azurerm_network_watcher_flow_log *)

let retention_policy ~days ~enabled () : retention_policy =
  { days; enabled }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let traffic_analytics ?interval_in_minutes ~enabled ~workspace_id
    ~workspace_region ~workspace_resource_id () : traffic_analytics =
  {
    enabled;
    interval_in_minutes;
    workspace_id;
    workspace_region;
    workspace_resource_id;
  }

let azurerm_network_watcher_flow_log ?id ?location ?tags ?version
    ?timeouts ~enabled ~name ~network_security_group_id
    ~network_watcher_name ~resource_group_name ~storage_account_id
    ~retention_policy ~traffic_analytics () :
    azurerm_network_watcher_flow_log =
  {
    enabled;
    id;
    location;
    name;
    network_security_group_id;
    network_watcher_name;
    resource_group_name;
    storage_account_id;
    tags;
    version;
    retention_policy;
    timeouts;
    traffic_analytics;
  }

type t = {
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network_security_group_id : string prop;
  network_watcher_name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
  version : float prop;
}

let make ?id ?location ?tags ?version ?timeouts ~enabled ~name
    ~network_security_group_id ~network_watcher_name
    ~resource_group_name ~storage_account_id ~retention_policy
    ~traffic_analytics __id =
  let __type = "azurerm_network_watcher_flow_log" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_security_group_id =
         Prop.computed __type __id "network_security_group_id";
       network_watcher_name =
         Prop.computed __type __id "network_watcher_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_watcher_flow_log
        (azurerm_network_watcher_flow_log ?id ?location ?tags
           ?version ?timeouts ~enabled ~name
           ~network_security_group_id ~network_watcher_name
           ~resource_group_name ~storage_account_id ~retention_policy
           ~traffic_analytics ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?tags ?version ?timeouts
    ~enabled ~name ~network_security_group_id ~network_watcher_name
    ~resource_group_name ~storage_account_id ~retention_policy
    ~traffic_analytics __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?tags ?version ?timeouts ~enabled ~name
      ~network_security_group_id ~network_watcher_name
      ~resource_group_name ~storage_account_id ~retention_policy
      ~traffic_analytics __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
