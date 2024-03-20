(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type georeplications = {
  location : string prop;  (** location *)
  regional_endpoint_enabled : bool prop option; [@option]
      (** regional_endpoint_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundancy_enabled : bool prop option; [@option]
      (** zone_redundancy_enabled *)
}
[@@deriving yojson_of]
(** georeplications *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type encryption = {
  enabled : bool prop;  (** enabled *)
  identity_client_id : string prop;  (** identity_client_id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}
[@@deriving yojson_of]

type network_rule_set__virtual_network = {
  action : string prop;  (** action *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]

type network_rule_set__ip_rule = {
  action : string prop;  (** action *)
  ip_range : string prop;  (** ip_range *)
}
[@@deriving yojson_of]

type network_rule_set = {
  default_action : string prop;  (** default_action *)
  ip_rule : network_rule_set__ip_rule list;  (** ip_rule *)
  virtual_network : network_rule_set__virtual_network list;
      (** virtual_network *)
}
[@@deriving yojson_of]

type retention_policy = {
  days : float prop;  (** days *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]

type trust_policy = { enabled : bool prop  (** enabled *) }
[@@deriving yojson_of]

type azurerm_container_registry = {
  admin_enabled : bool prop option; [@option]  (** admin_enabled *)
  anonymous_pull_enabled : bool prop option; [@option]
      (** anonymous_pull_enabled *)
  data_endpoint_enabled : bool prop option; [@option]
      (** data_endpoint_enabled *)
  encryption : encryption list option; [@option]  (** encryption *)
  export_policy_enabled : bool prop option; [@option]
      (** export_policy_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  network_rule_bypass_option : string prop option; [@option]
      (** network_rule_bypass_option *)
  network_rule_set : network_rule_set list option; [@option]
      (** network_rule_set *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  quarantine_policy_enabled : bool prop option; [@option]
      (** quarantine_policy_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  retention_policy : retention_policy list option; [@option]
      (** retention_policy *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  trust_policy : trust_policy list option; [@option]
      (** trust_policy *)
  zone_redundancy_enabled : bool prop option; [@option]
      (** zone_redundancy_enabled *)
  georeplications : georeplications list;
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry *)

let georeplications ?regional_endpoint_enabled ?tags
    ?zone_redundancy_enabled ~location () : georeplications =
  {
    location;
    regional_endpoint_enabled;
    tags;
    zone_redundancy_enabled;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_registry ?admin_enabled ?anonymous_pull_enabled
    ?data_endpoint_enabled ?encryption ?export_policy_enabled ?id
    ?network_rule_bypass_option ?network_rule_set
    ?public_network_access_enabled ?quarantine_policy_enabled
    ?retention_policy ?tags ?trust_policy ?zone_redundancy_enabled
    ?timeouts ~location ~name ~resource_group_name ~sku
    ~georeplications ~identity () : azurerm_container_registry =
  {
    admin_enabled;
    anonymous_pull_enabled;
    data_endpoint_enabled;
    encryption;
    export_policy_enabled;
    id;
    location;
    name;
    network_rule_bypass_option;
    network_rule_set;
    public_network_access_enabled;
    quarantine_policy_enabled;
    resource_group_name;
    retention_policy;
    sku;
    tags;
    trust_policy;
    zone_redundancy_enabled;
    georeplications;
    identity;
    timeouts;
  }

type t = {
  admin_enabled : bool prop;
  admin_password : string prop;
  admin_username : string prop;
  anonymous_pull_enabled : bool prop;
  data_endpoint_enabled : bool prop;
  encryption : encryption list prop;
  export_policy_enabled : bool prop;
  id : string prop;
  location : string prop;
  login_server : string prop;
  name : string prop;
  network_rule_bypass_option : string prop;
  network_rule_set : network_rule_set list prop;
  public_network_access_enabled : bool prop;
  quarantine_policy_enabled : bool prop;
  resource_group_name : string prop;
  retention_policy : retention_policy list prop;
  sku : string prop;
  tags : (string * string) list prop;
  trust_policy : trust_policy list prop;
  zone_redundancy_enabled : bool prop;
}

let make ?admin_enabled ?anonymous_pull_enabled
    ?data_endpoint_enabled ?encryption ?export_policy_enabled ?id
    ?network_rule_bypass_option ?network_rule_set
    ?public_network_access_enabled ?quarantine_policy_enabled
    ?retention_policy ?tags ?trust_policy ?zone_redundancy_enabled
    ?timeouts ~location ~name ~resource_group_name ~sku
    ~georeplications ~identity __id =
  let __type = "azurerm_container_registry" in
  let __attrs =
    ({
       admin_enabled = Prop.computed __type __id "admin_enabled";
       admin_password = Prop.computed __type __id "admin_password";
       admin_username = Prop.computed __type __id "admin_username";
       anonymous_pull_enabled =
         Prop.computed __type __id "anonymous_pull_enabled";
       data_endpoint_enabled =
         Prop.computed __type __id "data_endpoint_enabled";
       encryption = Prop.computed __type __id "encryption";
       export_policy_enabled =
         Prop.computed __type __id "export_policy_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       login_server = Prop.computed __type __id "login_server";
       name = Prop.computed __type __id "name";
       network_rule_bypass_option =
         Prop.computed __type __id "network_rule_bypass_option";
       network_rule_set =
         Prop.computed __type __id "network_rule_set";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       quarantine_policy_enabled =
         Prop.computed __type __id "quarantine_policy_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retention_policy =
         Prop.computed __type __id "retention_policy";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       trust_policy = Prop.computed __type __id "trust_policy";
       zone_redundancy_enabled =
         Prop.computed __type __id "zone_redundancy_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry
        (azurerm_container_registry ?admin_enabled
           ?anonymous_pull_enabled ?data_endpoint_enabled ?encryption
           ?export_policy_enabled ?id ?network_rule_bypass_option
           ?network_rule_set ?public_network_access_enabled
           ?quarantine_policy_enabled ?retention_policy ?tags
           ?trust_policy ?zone_redundancy_enabled ?timeouts ~location
           ~name ~resource_group_name ~sku ~georeplications ~identity
           ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_enabled ?anonymous_pull_enabled
    ?data_endpoint_enabled ?encryption ?export_policy_enabled ?id
    ?network_rule_bypass_option ?network_rule_set
    ?public_network_access_enabled ?quarantine_policy_enabled
    ?retention_policy ?tags ?trust_policy ?zone_redundancy_enabled
    ?timeouts ~location ~name ~resource_group_name ~sku
    ~georeplications ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?admin_enabled ?anonymous_pull_enabled
      ?data_endpoint_enabled ?encryption ?export_policy_enabled ?id
      ?network_rule_bypass_option ?network_rule_set
      ?public_network_access_enabled ?quarantine_policy_enabled
      ?retention_policy ?tags ?trust_policy ?zone_redundancy_enabled
      ?timeouts ~location ~name ~resource_group_name ~sku
      ~georeplications ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
