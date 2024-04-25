(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ddos_protection_plan = { enable : bool prop; id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ddos_protection_plan) -> ()

let yojson_of_ddos_protection_plan =
  (function
   | { enable = v_enable; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable in
         ("enable", arg) :: bnds
       in
       `Assoc bnds
    : ddos_protection_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ddos_protection_plan

[@@@deriving.end]

type encryption = { enforcement : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption) -> ()

let yojson_of_encryption =
  (function
   | { enforcement = v_enforcement } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_enforcement in
         ("enforcement", arg) :: bnds
       in
       `Assoc bnds
    : encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption

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

type subnet = {
  address_prefix : string prop;
  id : string prop;
  name : string prop;
  security_group : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subnet) -> ()

let yojson_of_subnet =
  (function
   | {
       address_prefix = v_address_prefix;
       id = v_id;
       name = v_name;
       security_group = v_security_group;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_group
         in
         ("security_group", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_prefix
         in
         ("address_prefix", arg) :: bnds
       in
       `Assoc bnds
    : subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnet

[@@@deriving.end]

type azurerm_virtual_network = {
  address_space : string prop list;
  bgp_community : string prop option; [@option]
  dns_servers : string prop list option; [@option]
  edge_zone : string prop option; [@option]
  flow_timeout_in_minutes : float prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  subnet : subnet list option; [@option]
  tags : (string * string prop) list option; [@option]
  ddos_protection_plan : ddos_protection_plan list;
  encryption : encryption list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_network) -> ()

let yojson_of_azurerm_virtual_network =
  (function
   | {
       address_space = v_address_space;
       bgp_community = v_bgp_community;
       dns_servers = v_dns_servers;
       edge_zone = v_edge_zone;
       flow_timeout_in_minutes = v_flow_timeout_in_minutes;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       subnet = v_subnet;
       tags = v_tags;
       ddos_protection_plan = v_ddos_protection_plan;
       encryption = v_encryption;
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
         let arg =
           yojson_of_list yojson_of_encryption v_encryption
         in
         ("encryption", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ddos_protection_plan
             v_ddos_protection_plan
         in
         ("ddos_protection_plan", arg) :: bnds
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
         match v_subnet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_subnet v in
             let bnd = "subnet", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_flow_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "flow_timeout_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_zone", arg in
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
         match v_bgp_community with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bgp_community", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_address_space
         in
         ("address_space", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_network

[@@@deriving.end]

let ddos_protection_plan ~enable ~id () : ddos_protection_plan =
  { enable; id }

let encryption ~enforcement () : encryption = { enforcement }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_network ?bgp_community ?dns_servers ?edge_zone
    ?flow_timeout_in_minutes ?id ?subnet ?tags
    ?(ddos_protection_plan = []) ?(encryption = []) ?timeouts
    ~address_space ~location ~name ~resource_group_name () :
    azurerm_virtual_network =
  {
    address_space;
    bgp_community;
    dns_servers;
    edge_zone;
    flow_timeout_in_minutes;
    id;
    location;
    name;
    resource_group_name;
    subnet;
    tags;
    ddos_protection_plan;
    encryption;
    timeouts;
  }

type t = {
  address_space : string list prop;
  bgp_community : string prop;
  dns_servers : string list prop;
  edge_zone : string prop;
  flow_timeout_in_minutes : float prop;
  guid : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  subnet : subnet list prop;
  tags : (string * string) list prop;
}

let make ?bgp_community ?dns_servers ?edge_zone
    ?flow_timeout_in_minutes ?id ?subnet ?tags
    ?(ddos_protection_plan = []) ?(encryption = []) ?timeouts
    ~address_space ~location ~name ~resource_group_name __id =
  let __type = "azurerm_virtual_network" in
  let __attrs =
    ({
       address_space = Prop.computed __type __id "address_space";
       bgp_community = Prop.computed __type __id "bgp_community";
       dns_servers = Prop.computed __type __id "dns_servers";
       edge_zone = Prop.computed __type __id "edge_zone";
       flow_timeout_in_minutes =
         Prop.computed __type __id "flow_timeout_in_minutes";
       guid = Prop.computed __type __id "guid";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subnet = Prop.computed __type __id "subnet";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network
        (azurerm_virtual_network ?bgp_community ?dns_servers
           ?edge_zone ?flow_timeout_in_minutes ?id ?subnet ?tags
           ~ddos_protection_plan ~encryption ?timeouts ~address_space
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?bgp_community ?dns_servers ?edge_zone
    ?flow_timeout_in_minutes ?id ?subnet ?tags
    ?(ddos_protection_plan = []) ?(encryption = []) ?timeouts
    ~address_space ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?bgp_community ?dns_servers ?edge_zone
      ?flow_timeout_in_minutes ?id ?subnet ?tags
      ~ddos_protection_plan ~encryption ?timeouts ~address_space
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
