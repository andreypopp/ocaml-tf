(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type frontend_ip_configuration = {
  gateway_load_balancer_frontend_ip_configuration_id :
    string prop option;
      [@option]
  name : string prop;
  private_ip_address : string prop option; [@option]
  private_ip_address_allocation : string prop option; [@option]
  private_ip_address_version : string prop option; [@option]
  public_ip_address_id : string prop option; [@option]
  public_ip_prefix_id : string prop option; [@option]
  subnet_id : string prop option; [@option]
  zones : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frontend_ip_configuration) -> ()

let yojson_of_frontend_ip_configuration =
  (function
   | {
       gateway_load_balancer_frontend_ip_configuration_id =
         v_gateway_load_balancer_frontend_ip_configuration_id;
       name = v_name;
       private_ip_address = v_private_ip_address;
       private_ip_address_allocation =
         v_private_ip_address_allocation;
       private_ip_address_version = v_private_ip_address_version;
       public_ip_address_id = v_public_ip_address_id;
       public_ip_prefix_id = v_public_ip_prefix_id;
       subnet_id = v_subnet_id;
       zones = v_zones;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ip_prefix_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip_prefix_id", arg in
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
         match v_private_ip_address_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_address_allocation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address_allocation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match
           v_gateway_load_balancer_frontend_ip_configuration_id
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               ( "gateway_load_balancer_frontend_ip_configuration_id",
                 arg )
             in
             bnd :: bnds
       in
       `Assoc bnds
    : frontend_ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frontend_ip_configuration

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

type azurerm_lb = {
  edge_zone : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop option; [@option]
  sku_tier : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  frontend_ip_configuration : frontend_ip_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lb) -> ()

let yojson_of_azurerm_lb =
  (function
   | {
       edge_zone = v_edge_zone;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       sku_tier = v_sku_tier;
       tags = v_tags;
       frontend_ip_configuration = v_frontend_ip_configuration;
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
           yojson_of_list yojson_of_frontend_ip_configuration
             v_frontend_ip_configuration
         in
         ("frontend_ip_configuration", arg) :: bnds
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
         match v_sku_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
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
         match v_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_zone", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_lb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lb

[@@@deriving.end]

let frontend_ip_configuration
    ?gateway_load_balancer_frontend_ip_configuration_id
    ?private_ip_address ?private_ip_address_allocation
    ?private_ip_address_version ?public_ip_address_id
    ?public_ip_prefix_id ?subnet_id ?zones ~name () :
    frontend_ip_configuration =
  {
    gateway_load_balancer_frontend_ip_configuration_id;
    name;
    private_ip_address;
    private_ip_address_allocation;
    private_ip_address_version;
    public_ip_address_id;
    public_ip_prefix_id;
    subnet_id;
    zones;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb ?edge_zone ?id ?sku ?sku_tier ?tags
    ?(frontend_ip_configuration = []) ?timeouts ~location ~name
    ~resource_group_name () : azurerm_lb =
  {
    edge_zone;
    id;
    location;
    name;
    resource_group_name;
    sku;
    sku_tier;
    tags;
    frontend_ip_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  edge_zone : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  resource_group_name : string prop;
  sku : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
}

let make ?edge_zone ?id ?sku ?sku_tier ?tags
    ?(frontend_ip_configuration = []) ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_lb" in
  let __attrs =
    ({
       tf_name = __id;
       edge_zone = Prop.computed __type __id "edge_zone";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       private_ip_addresses =
         Prop.computed __type __id "private_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       sku_tier = Prop.computed __type __id "sku_tier";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb
        (azurerm_lb ?edge_zone ?id ?sku ?sku_tier ?tags
           ~frontend_ip_configuration ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?edge_zone ?id ?sku ?sku_tier ?tags
    ?(frontend_ip_configuration = []) ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?edge_zone ?id ?sku ?sku_tier ?tags
      ~frontend_ip_configuration ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
