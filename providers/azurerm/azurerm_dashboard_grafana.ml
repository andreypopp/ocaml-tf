(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_monitor_workspace_integrations = {
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** azure_monitor_workspace_integrations *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type smtp = {
  enabled : bool prop option; [@option]  (** enabled *)
  from_address : string prop;  (** from_address *)
  from_name : string prop option; [@option]  (** from_name *)
  host : string prop;  (** host *)
  password : string prop;  (** password *)
  start_tls_policy : string prop;  (** start_tls_policy *)
  user : string prop;  (** user *)
  verification_skip_enabled : bool prop option; [@option]
      (** verification_skip_enabled *)
}
[@@deriving yojson_of]
(** smtp *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dashboard_grafana = {
  api_key_enabled : bool prop option; [@option]
      (** api_key_enabled *)
  auto_generated_domain_name_label_scope : string prop option;
      [@option]
      (** auto_generated_domain_name_label_scope *)
  deterministic_outbound_ip_enabled : bool prop option; [@option]
      (** deterministic_outbound_ip_enabled *)
  grafana_major_version : string prop option; [@option]
      (** grafana_major_version *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundancy_enabled : bool prop option; [@option]
      (** zone_redundancy_enabled *)
  azure_monitor_workspace_integrations :
    azure_monitor_workspace_integrations list;
  identity : identity list;
  smtp : smtp list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dashboard_grafana *)

let azure_monitor_workspace_integrations ~resource_id () :
    azure_monitor_workspace_integrations =
  { resource_id }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let smtp ?enabled ?from_name ?verification_skip_enabled ~from_address
    ~host ~password ~start_tls_policy ~user () : smtp =
  {
    enabled;
    from_address;
    from_name;
    host;
    password;
    start_tls_policy;
    user;
    verification_skip_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dashboard_grafana ?api_key_enabled
    ?auto_generated_domain_name_label_scope
    ?deterministic_outbound_ip_enabled ?grafana_major_version ?id
    ?public_network_access_enabled ?sku ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~azure_monitor_workspace_integrations
    ~identity ~smtp () : azurerm_dashboard_grafana =
  {
    api_key_enabled;
    auto_generated_domain_name_label_scope;
    deterministic_outbound_ip_enabled;
    grafana_major_version;
    id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    sku;
    tags;
    zone_redundancy_enabled;
    azure_monitor_workspace_integrations;
    identity;
    smtp;
    timeouts;
  }

type t = {
  api_key_enabled : bool prop;
  auto_generated_domain_name_label_scope : string prop;
  deterministic_outbound_ip_enabled : bool prop;
  endpoint : string prop;
  grafana_major_version : string prop;
  grafana_version : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_ip : string list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundancy_enabled : bool prop;
}

let make ?api_key_enabled ?auto_generated_domain_name_label_scope
    ?deterministic_outbound_ip_enabled ?grafana_major_version ?id
    ?public_network_access_enabled ?sku ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~azure_monitor_workspace_integrations
    ~identity ~smtp __id =
  let __type = "azurerm_dashboard_grafana" in
  let __attrs =
    ({
       api_key_enabled = Prop.computed __type __id "api_key_enabled";
       auto_generated_domain_name_label_scope =
         Prop.computed __type __id
           "auto_generated_domain_name_label_scope";
       deterministic_outbound_ip_enabled =
         Prop.computed __type __id
           "deterministic_outbound_ip_enabled";
       endpoint = Prop.computed __type __id "endpoint";
       grafana_major_version =
         Prop.computed __type __id "grafana_major_version";
       grafana_version = Prop.computed __type __id "grafana_version";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ip = Prop.computed __type __id "outbound_ip";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       zone_redundancy_enabled =
         Prop.computed __type __id "zone_redundancy_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dashboard_grafana
        (azurerm_dashboard_grafana ?api_key_enabled
           ?auto_generated_domain_name_label_scope
           ?deterministic_outbound_ip_enabled ?grafana_major_version
           ?id ?public_network_access_enabled ?sku ?tags
           ?zone_redundancy_enabled ?timeouts ~location ~name
           ~resource_group_name ~azure_monitor_workspace_integrations
           ~identity ~smtp ());
    attrs = __attrs;
  }

let register ?tf_module ?api_key_enabled
    ?auto_generated_domain_name_label_scope
    ?deterministic_outbound_ip_enabled ?grafana_major_version ?id
    ?public_network_access_enabled ?sku ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~azure_monitor_workspace_integrations
    ~identity ~smtp __id =
  let (r : _ Tf_core.resource) =
    make ?api_key_enabled ?auto_generated_domain_name_label_scope
      ?deterministic_outbound_ip_enabled ?grafana_major_version ?id
      ?public_network_access_enabled ?sku ?tags
      ?zone_redundancy_enabled ?timeouts ~location ~name
      ~resource_group_name ~azure_monitor_workspace_integrations
      ~identity ~smtp __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
