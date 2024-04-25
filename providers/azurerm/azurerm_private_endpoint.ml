(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_configuration = {
  member_name : string prop option; [@option]
  name : string prop;
  private_ip_address : string prop;
  subresource_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_configuration) -> ()

let yojson_of_ip_configuration =
  (function
   | {
       member_name = v_member_name;
       name = v_name;
       private_ip_address = v_private_ip_address;
       subresource_name = v_subresource_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subresource_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subresource_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_member_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "member_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_configuration

[@@@deriving.end]

type private_dns_zone_group = {
  name : string prop;
  private_dns_zone_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_dns_zone_group) -> ()

let yojson_of_private_dns_zone_group =
  (function
   | { name = v_name; private_dns_zone_ids = v_private_dns_zone_ids }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_private_dns_zone_ids
         in
         ("private_dns_zone_ids", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : private_dns_zone_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_dns_zone_group

[@@@deriving.end]

type private_service_connection = {
  is_manual_connection : bool prop;
  name : string prop;
  private_connection_resource_alias : string prop option; [@option]
  private_connection_resource_id : string prop option; [@option]
  request_message : string prop option; [@option]
  subresource_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_service_connection) -> ()

let yojson_of_private_service_connection =
  (function
   | {
       is_manual_connection = v_is_manual_connection;
       name = v_name;
       private_connection_resource_alias =
         v_private_connection_resource_alias;
       private_connection_resource_id =
         v_private_connection_resource_id;
       request_message = v_request_message;
       subresource_names = v_subresource_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subresource_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subresource_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_connection_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_connection_resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_connection_resource_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_connection_resource_alias", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_is_manual_connection
         in
         ("is_manual_connection", arg) :: bnds
       in
       `Assoc bnds
    : private_service_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_service_connection

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

type custom_dns_configs = {
  fqdn : string prop;
  ip_addresses : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_dns_configs) -> ()

let yojson_of_custom_dns_configs =
  (function
   | { fqdn = v_fqdn; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_addresses
         in
         ("ip_addresses", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       `Assoc bnds
    : custom_dns_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_dns_configs

[@@@deriving.end]

type network_interface = { id : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface) -> ()

let yojson_of_network_interface =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface

[@@@deriving.end]

type private_dns_zone_configs__record_sets = {
  fqdn : string prop;
  ip_addresses : string prop list;
  name : string prop;
  ttl : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_dns_zone_configs__record_sets) -> ()

let yojson_of_private_dns_zone_configs__record_sets =
  (function
   | {
       fqdn = v_fqdn;
       ip_addresses = v_ip_addresses;
       name = v_name;
       ttl = v_ttl;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_addresses
         in
         ("ip_addresses", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       `Assoc bnds
    : private_dns_zone_configs__record_sets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_dns_zone_configs__record_sets

[@@@deriving.end]

type private_dns_zone_configs = {
  id : string prop;
  name : string prop;
  private_dns_zone_id : string prop;
  record_sets : private_dns_zone_configs__record_sets list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_dns_zone_configs) -> ()

let yojson_of_private_dns_zone_configs =
  (function
   | {
       id = v_id;
       name = v_name;
       private_dns_zone_id = v_private_dns_zone_id;
       record_sets = v_record_sets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_private_dns_zone_configs__record_sets
             v_record_sets
         in
         ("record_sets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_dns_zone_id
         in
         ("private_dns_zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : private_dns_zone_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_dns_zone_configs

[@@@deriving.end]

type azurerm_private_endpoint = {
  custom_network_interface_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  ip_configuration : ip_configuration list;
  private_dns_zone_group : private_dns_zone_group list;
  private_service_connection : private_service_connection list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_private_endpoint) -> ()

let yojson_of_azurerm_private_endpoint =
  (function
   | {
       custom_network_interface_name =
         v_custom_network_interface_name;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       subnet_id = v_subnet_id;
       tags = v_tags;
       ip_configuration = v_ip_configuration;
       private_dns_zone_group = v_private_dns_zone_group;
       private_service_connection = v_private_service_connection;
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
           yojson_of_list yojson_of_private_service_connection
             v_private_service_connection
         in
         ("private_service_connection", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_private_dns_zone_group
             v_private_dns_zone_group
         in
         ("private_dns_zone_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ip_configuration
             v_ip_configuration
         in
         ("ip_configuration", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
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
         match v_custom_network_interface_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_network_interface_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_private_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_private_endpoint

[@@@deriving.end]

let ip_configuration ?member_name ?subresource_name ~name
    ~private_ip_address () : ip_configuration =
  { member_name; name; private_ip_address; subresource_name }

let private_dns_zone_group ~name ~private_dns_zone_ids () :
    private_dns_zone_group =
  { name; private_dns_zone_ids }

let private_service_connection ?private_connection_resource_alias
    ?private_connection_resource_id ?request_message
    ?subresource_names ~is_manual_connection ~name () :
    private_service_connection =
  {
    is_manual_connection;
    name;
    private_connection_resource_alias;
    private_connection_resource_id;
    request_message;
    subresource_names;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_endpoint ?custom_network_interface_name ?id ?tags
    ?(ip_configuration = []) ?(private_dns_zone_group = []) ?timeouts
    ~location ~name ~resource_group_name ~subnet_id
    ~private_service_connection () : azurerm_private_endpoint =
  {
    custom_network_interface_name;
    id;
    location;
    name;
    resource_group_name;
    subnet_id;
    tags;
    ip_configuration;
    private_dns_zone_group;
    private_service_connection;
    timeouts;
  }

type t = {
  custom_dns_configs : custom_dns_configs list prop;
  custom_network_interface_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network_interface : network_interface list prop;
  private_dns_zone_configs : private_dns_zone_configs list prop;
  resource_group_name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

let make ?custom_network_interface_name ?id ?tags
    ?(ip_configuration = []) ?(private_dns_zone_group = []) ?timeouts
    ~location ~name ~resource_group_name ~subnet_id
    ~private_service_connection __id =
  let __type = "azurerm_private_endpoint" in
  let __attrs =
    ({
       custom_dns_configs =
         Prop.computed __type __id "custom_dns_configs";
       custom_network_interface_name =
         Prop.computed __type __id "custom_network_interface_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_interface =
         Prop.computed __type __id "network_interface";
       private_dns_zone_configs =
         Prop.computed __type __id "private_dns_zone_configs";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_private_endpoint
        (azurerm_private_endpoint ?custom_network_interface_name ?id
           ?tags ~ip_configuration ~private_dns_zone_group ?timeouts
           ~location ~name ~resource_group_name ~subnet_id
           ~private_service_connection ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_network_interface_name ?id ?tags
    ?(ip_configuration = []) ?(private_dns_zone_group = []) ?timeouts
    ~location ~name ~resource_group_name ~subnet_id
    ~private_service_connection __id =
  let (r : _ Tf_core.resource) =
    make ?custom_network_interface_name ?id ?tags ~ip_configuration
      ~private_dns_zone_group ?timeouts ~location ~name
      ~resource_group_name ~subnet_id ~private_service_connection
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
