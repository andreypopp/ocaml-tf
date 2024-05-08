(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type georeplications = {
  location : string prop;
  regional_endpoint_enabled : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  zone_redundancy_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : georeplications) -> ()

let yojson_of_georeplications =
  (function
   | {
       location = v_location;
       regional_endpoint_enabled = v_regional_endpoint_enabled;
       tags = v_tags;
       zone_redundancy_enabled = v_zone_redundancy_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone_redundancy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundancy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regional_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "regional_endpoint_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : georeplications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_georeplications

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type encryption = {
  enabled : bool prop;
  identity_client_id : string prop;
  key_vault_key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption) -> ()

let yojson_of_encryption =
  (function
   | {
       enabled = v_enabled;
       identity_client_id = v_identity_client_id;
       key_vault_key_id = v_key_vault_key_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_client_id
         in
         ("identity_client_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption

[@@@deriving.end]

type network_rule_set__virtual_network = {
  action : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rule_set__virtual_network) -> ()

let yojson_of_network_rule_set__virtual_network =
  (function
   | { action = v_action; subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : network_rule_set__virtual_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rule_set__virtual_network

[@@@deriving.end]

type network_rule_set__ip_rule = {
  action : string prop;
  ip_range : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rule_set__ip_rule) -> ()

let yojson_of_network_rule_set__ip_rule =
  (function
   | { action = v_action; ip_range = v_ip_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_range in
         ("ip_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : network_rule_set__ip_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rule_set__ip_rule

[@@@deriving.end]

type network_rule_set = {
  default_action : string prop;
  ip_rule : network_rule_set__ip_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  virtual_network : network_rule_set__virtual_network list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rule_set) -> ()

let yojson_of_network_rule_set =
  (function
   | {
       default_action = v_default_action;
       ip_rule = v_ip_rule;
       virtual_network = v_virtual_network;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_network then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_rule_set__virtual_network)
               v_virtual_network
           in
           let bnd = "virtual_network", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_rule_set__ip_rule)
               v_ip_rule
           in
           let bnd = "ip_rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_action
         in
         ("default_action", arg) :: bnds
       in
       `Assoc bnds
    : network_rule_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rule_set

[@@@deriving.end]

type retention_policy = { days : float prop; enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_policy) -> ()

let yojson_of_retention_policy =
  (function
   | { days = v_days; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_days in
         ("days", arg) :: bnds
       in
       `Assoc bnds
    : retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_policy

[@@@deriving.end]

type trust_policy = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : trust_policy) -> ()

let yojson_of_trust_policy =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : trust_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trust_policy

[@@@deriving.end]

type azurerm_container_registry = {
  admin_enabled : bool prop option; [@option]
  anonymous_pull_enabled : bool prop option; [@option]
  data_endpoint_enabled : bool prop option; [@option]
  encryption : encryption list option; [@option]
  export_policy_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  network_rule_bypass_option : string prop option; [@option]
  network_rule_set : network_rule_set list option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  quarantine_policy_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  retention_policy : retention_policy list option; [@option]
  sku : string prop;
  tags : (string * string prop) list option; [@option]
  trust_policy : trust_policy list option; [@option]
  zone_redundancy_enabled : bool prop option; [@option]
  georeplications : georeplications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_registry) -> ()

let yojson_of_azurerm_container_registry =
  (function
   | {
       admin_enabled = v_admin_enabled;
       anonymous_pull_enabled = v_anonymous_pull_enabled;
       data_endpoint_enabled = v_data_endpoint_enabled;
       encryption = v_encryption;
       export_policy_enabled = v_export_policy_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       network_rule_bypass_option = v_network_rule_bypass_option;
       network_rule_set = v_network_rule_set;
       public_network_access_enabled =
         v_public_network_access_enabled;
       quarantine_policy_enabled = v_quarantine_policy_enabled;
       resource_group_name = v_resource_group_name;
       retention_policy = v_retention_policy;
       sku = v_sku;
       tags = v_tags;
       trust_policy = v_trust_policy;
       zone_redundancy_enabled = v_zone_redundancy_enabled;
       georeplications = v_georeplications;
       identity = v_identity;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_georeplications then bnds
         else
           let arg =
             (yojson_of_list yojson_of_georeplications)
               v_georeplications
           in
           let bnd = "georeplications", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone_redundancy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundancy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trust_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_trust_policy v in
             let bnd = "trust_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         match v_retention_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_retention_policy v in
             let bnd = "retention_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_quarantine_policy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "quarantine_policy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_rule_set with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_network_rule_set v in
             let bnd = "network_rule_set", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_rule_bypass_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_rule_bypass_option", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_export_policy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "export_policy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_encryption v in
             let bnd = "encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_endpoint_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_anonymous_pull_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "anonymous_pull_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "admin_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_container_registry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_registry

[@@@deriving.end]

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
    ?(georeplications = []) ?(identity = []) ?timeouts ~location
    ~name ~resource_group_name ~sku () : azurerm_container_registry =
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
  tf_name : string;
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
    ?(georeplications = []) ?(identity = []) ?timeouts ~location
    ~name ~resource_group_name ~sku __id =
  let __type = "azurerm_container_registry" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?trust_policy ?zone_redundancy_enabled ~georeplications
           ~identity ?timeouts ~location ~name ~resource_group_name
           ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_enabled ?anonymous_pull_enabled
    ?data_endpoint_enabled ?encryption ?export_policy_enabled ?id
    ?network_rule_bypass_option ?network_rule_set
    ?public_network_access_enabled ?quarantine_policy_enabled
    ?retention_policy ?tags ?trust_policy ?zone_redundancy_enabled
    ?(georeplications = []) ?(identity = []) ?timeouts ~location
    ~name ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?admin_enabled ?anonymous_pull_enabled
      ?data_endpoint_enabled ?encryption ?export_policy_enabled ?id
      ?network_rule_bypass_option ?network_rule_set
      ?public_network_access_enabled ?quarantine_policy_enabled
      ?retention_policy ?tags ?trust_policy ?zone_redundancy_enabled
      ~georeplications ~identity ?timeouts ~location ~name
      ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
