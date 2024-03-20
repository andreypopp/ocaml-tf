(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_configuration = {
  name : string prop;
  public_ip_address_id : string prop option; [@option]
  subnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_configuration) -> ()

let yojson_of_ip_configuration =
  (function
   | {
       name = v_name;
       public_ip_address_id = v_public_ip_address_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ip_address_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip_address_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_configuration

[@@@deriving.end]

type management_ip_configuration = {
  name : string prop;
  public_ip_address_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management_ip_configuration) -> ()

let yojson_of_management_ip_configuration =
  (function
   | {
       name = v_name;
       public_ip_address_id = v_public_ip_address_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address_id
         in
         ("public_ip_address_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : management_ip_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management_ip_configuration

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

type virtual_hub = {
  public_ip_count : float prop option; [@option]
  virtual_hub_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_hub) -> ()

let yojson_of_virtual_hub =
  (function
   | {
       public_ip_count = v_public_ip_count;
       virtual_hub_id = v_virtual_hub_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_hub_id
         in
         ("virtual_hub_id", arg) :: bnds
       in
       let bnds =
         match v_public_ip_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "public_ip_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : virtual_hub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_hub

[@@@deriving.end]

type azurerm_firewall = {
  dns_proxy_enabled : bool prop option; [@option]
  dns_servers : string prop list option; [@option]
  firewall_policy_id : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  private_ip_ranges : string prop list option; [@option]
  resource_group_name : string prop;
  sku_name : string prop;
  sku_tier : string prop;
  tags : (string * string prop) list option; [@option]
  threat_intel_mode : string prop option; [@option]
  zones : string prop list option; [@option]
  ip_configuration : ip_configuration list;
  management_ip_configuration : management_ip_configuration list;
  timeouts : timeouts option;
  virtual_hub : virtual_hub list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_firewall) -> ()

let yojson_of_azurerm_firewall =
  (function
   | {
       dns_proxy_enabled = v_dns_proxy_enabled;
       dns_servers = v_dns_servers;
       firewall_policy_id = v_firewall_policy_id;
       id = v_id;
       location = v_location;
       name = v_name;
       private_ip_ranges = v_private_ip_ranges;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       sku_tier = v_sku_tier;
       tags = v_tags;
       threat_intel_mode = v_threat_intel_mode;
       zones = v_zones;
       ip_configuration = v_ip_configuration;
       management_ip_configuration = v_management_ip_configuration;
       timeouts = v_timeouts;
       virtual_hub = v_virtual_hub;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_virtual_hub v_virtual_hub
         in
         ("virtual_hub", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_management_ip_configuration
             v_management_ip_configuration
         in
         ("management_ip_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ip_configuration
             v_ip_configuration
         in
         ("ip_configuration", arg) :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_threat_intel_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "threat_intel_mode", arg in
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
         let arg = yojson_of_prop yojson_of_string v_sku_tier in
         ("sku_tier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_private_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "private_ip_ranges", arg in
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
         match v_firewall_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firewall_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_servers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_proxy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dns_proxy_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_firewall -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_firewall

[@@@deriving.end]

let ip_configuration ?public_ip_address_id ?subnet_id ~name () :
    ip_configuration =
  { name; public_ip_address_id; subnet_id }

let management_ip_configuration ~name ~public_ip_address_id
    ~subnet_id () : management_ip_configuration =
  { name; public_ip_address_id; subnet_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let virtual_hub ?public_ip_count ~virtual_hub_id () : virtual_hub =
  { public_ip_count; virtual_hub_id }

let azurerm_firewall ?dns_proxy_enabled ?dns_servers
    ?firewall_policy_id ?id ?private_ip_ranges ?tags
    ?threat_intel_mode ?zones ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~sku_tier ~ip_configuration
    ~management_ip_configuration ~virtual_hub () : azurerm_firewall =
  {
    dns_proxy_enabled;
    dns_servers;
    firewall_policy_id;
    id;
    location;
    name;
    private_ip_ranges;
    resource_group_name;
    sku_name;
    sku_tier;
    tags;
    threat_intel_mode;
    zones;
    ip_configuration;
    management_ip_configuration;
    timeouts;
    virtual_hub;
  }

type t = {
  dns_proxy_enabled : bool prop;
  dns_servers : string list prop;
  firewall_policy_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_ip_ranges : string list prop;
  resource_group_name : string prop;
  sku_name : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
  threat_intel_mode : string prop;
  zones : string list prop;
}

let make ?dns_proxy_enabled ?dns_servers ?firewall_policy_id ?id
    ?private_ip_ranges ?tags ?threat_intel_mode ?zones ?timeouts
    ~location ~name ~resource_group_name ~sku_name ~sku_tier
    ~ip_configuration ~management_ip_configuration ~virtual_hub __id
    =
  let __type = "azurerm_firewall" in
  let __attrs =
    ({
       dns_proxy_enabled =
         Prop.computed __type __id "dns_proxy_enabled";
       dns_servers = Prop.computed __type __id "dns_servers";
       firewall_policy_id =
         Prop.computed __type __id "firewall_policy_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_ip_ranges =
         Prop.computed __type __id "private_ip_ranges";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       sku_tier = Prop.computed __type __id "sku_tier";
       tags = Prop.computed __type __id "tags";
       threat_intel_mode =
         Prop.computed __type __id "threat_intel_mode";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_firewall
        (azurerm_firewall ?dns_proxy_enabled ?dns_servers
           ?firewall_policy_id ?id ?private_ip_ranges ?tags
           ?threat_intel_mode ?zones ?timeouts ~location ~name
           ~resource_group_name ~sku_name ~sku_tier ~ip_configuration
           ~management_ip_configuration ~virtual_hub ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_proxy_enabled ?dns_servers
    ?firewall_policy_id ?id ?private_ip_ranges ?tags
    ?threat_intel_mode ?zones ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~sku_tier ~ip_configuration
    ~management_ip_configuration ~virtual_hub __id =
  let (r : _ Tf_core.resource) =
    make ?dns_proxy_enabled ?dns_servers ?firewall_policy_id ?id
      ?private_ip_ranges ?tags ?threat_intel_mode ?zones ?timeouts
      ~location ~name ~resource_group_name ~sku_name ~sku_tier
      ~ip_configuration ~management_ip_configuration ~virtual_hub
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
