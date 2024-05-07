(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_route_server = {
  branch_to_branch_traffic_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_ip_address_id : string prop;
  resource_group_name : string prop;
  sku : string prop;
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_route_server) -> ()

let yojson_of_azurerm_route_server =
  (function
   | {
       branch_to_branch_traffic_enabled =
         v_branch_to_branch_traffic_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       public_ip_address_id = v_public_ip_address_id;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       subnet_id = v_subnet_id;
       tags = v_tags;
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
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_branch_to_branch_traffic_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "branch_to_branch_traffic_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_route_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_route_server

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_route_server ?branch_to_branch_traffic_enabled ?id ?tags
    ?timeouts ~location ~name ~public_ip_address_id
    ~resource_group_name ~sku ~subnet_id () : azurerm_route_server =
  {
    branch_to_branch_traffic_enabled;
    id;
    location;
    name;
    public_ip_address_id;
    resource_group_name;
    sku;
    subnet_id;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  branch_to_branch_traffic_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_ip_address_id : string prop;
  resource_group_name : string prop;
  routing_state : string prop;
  sku : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  virtual_router_asn : float prop;
  virtual_router_ips : string list prop;
}

let make ?branch_to_branch_traffic_enabled ?id ?tags ?timeouts
    ~location ~name ~public_ip_address_id ~resource_group_name ~sku
    ~subnet_id __id =
  let __type = "azurerm_route_server" in
  let __attrs =
    ({
       tf_name = __id;
       branch_to_branch_traffic_enabled =
         Prop.computed __type __id "branch_to_branch_traffic_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_ip_address_id =
         Prop.computed __type __id "public_ip_address_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       routing_state = Prop.computed __type __id "routing_state";
       sku = Prop.computed __type __id "sku";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       virtual_router_asn =
         Prop.computed __type __id "virtual_router_asn";
       virtual_router_ips =
         Prop.computed __type __id "virtual_router_ips";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_route_server
        (azurerm_route_server ?branch_to_branch_traffic_enabled ?id
           ?tags ?timeouts ~location ~name ~public_ip_address_id
           ~resource_group_name ~sku ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?branch_to_branch_traffic_enabled ?id ?tags
    ?timeouts ~location ~name ~public_ip_address_id
    ~resource_group_name ~sku ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?branch_to_branch_traffic_enabled ?id ?tags ?timeouts
      ~location ~name ~public_ip_address_id ~resource_group_name ~sku
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
