(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_configuration = {
  gateway_load_balancer_frontend_ip_configuration_id :
    string prop option;
      [@option]
  name : string prop;
  primary : bool prop option; [@option]
  private_ip_address : string prop option; [@option]
  private_ip_address_allocation : string prop;
  private_ip_address_version : string prop option; [@option]
  public_ip_address_id : string prop option; [@option]
  subnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_configuration) -> ()

let yojson_of_ip_configuration =
  (function
   | {
       gateway_load_balancer_frontend_ip_configuration_id =
         v_gateway_load_balancer_frontend_ip_configuration_id;
       name = v_name;
       primary = v_primary;
       private_ip_address = v_private_ip_address;
       private_ip_address_allocation =
         v_private_ip_address_allocation;
       private_ip_address_version = v_private_ip_address_version;
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
         match v_private_ip_address_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_private_ip_address_allocation
         in
         ("private_ip_address_allocation", arg) :: bnds
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
         match v_primary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary", arg in
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
    : ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ip_configuration

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

type azurerm_network_interface = {
  accelerated_networking_enabled : bool prop option; [@option]
  auxiliary_mode : string prop option; [@option]
  auxiliary_sku : string prop option; [@option]
  dns_servers : string prop list option; [@option]
  edge_zone : string prop option; [@option]
  enable_accelerated_networking : bool prop option; [@option]
  enable_ip_forwarding : bool prop option; [@option]
  id : string prop option; [@option]
  internal_dns_name_label : string prop option; [@option]
  ip_forwarding_enabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  ip_configuration : ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_interface) -> ()

let yojson_of_azurerm_network_interface =
  (function
   | {
       accelerated_networking_enabled =
         v_accelerated_networking_enabled;
       auxiliary_mode = v_auxiliary_mode;
       auxiliary_sku = v_auxiliary_sku;
       dns_servers = v_dns_servers;
       edge_zone = v_edge_zone;
       enable_accelerated_networking =
         v_enable_accelerated_networking;
       enable_ip_forwarding = v_enable_ip_forwarding;
       id = v_id;
       internal_dns_name_label = v_internal_dns_name_label;
       ip_forwarding_enabled = v_ip_forwarding_enabled;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       ip_configuration = v_ip_configuration;
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
         if Stdlib.( = ) [] v_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ip_configuration)
               v_ip_configuration
           in
           let bnd = "ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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
         match v_ip_forwarding_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ip_forwarding_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internal_dns_name_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "internal_dns_name_label", arg in
             bnd :: bnds
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
         match v_enable_ip_forwarding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ip_forwarding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_accelerated_networking with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_accelerated_networking", arg in
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
         match v_auxiliary_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auxiliary_sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auxiliary_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auxiliary_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerated_networking_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "accelerated_networking_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_interface

[@@@deriving.end]

let ip_configuration
    ?gateway_load_balancer_frontend_ip_configuration_id ?primary
    ?private_ip_address ?private_ip_address_version
    ?public_ip_address_id ?subnet_id ~name
    ~private_ip_address_allocation () : ip_configuration =
  {
    gateway_load_balancer_frontend_ip_configuration_id;
    name;
    primary;
    private_ip_address;
    private_ip_address_allocation;
    private_ip_address_version;
    public_ip_address_id;
    subnet_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_interface ?accelerated_networking_enabled
    ?auxiliary_mode ?auxiliary_sku ?dns_servers ?edge_zone
    ?enable_accelerated_networking ?enable_ip_forwarding ?id
    ?internal_dns_name_label ?ip_forwarding_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~ip_configuration () :
    azurerm_network_interface =
  {
    accelerated_networking_enabled;
    auxiliary_mode;
    auxiliary_sku;
    dns_servers;
    edge_zone;
    enable_accelerated_networking;
    enable_ip_forwarding;
    id;
    internal_dns_name_label;
    ip_forwarding_enabled;
    location;
    name;
    resource_group_name;
    tags;
    ip_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  accelerated_networking_enabled : bool prop;
  applied_dns_servers : string list prop;
  auxiliary_mode : string prop;
  auxiliary_sku : string prop;
  dns_servers : string list prop;
  edge_zone : string prop;
  enable_accelerated_networking : bool prop;
  enable_ip_forwarding : bool prop;
  id : string prop;
  internal_dns_name_label : string prop;
  internal_domain_name_suffix : string prop;
  ip_forwarding_enabled : bool prop;
  location : string prop;
  mac_address : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  virtual_machine_id : string prop;
}

let make ?accelerated_networking_enabled ?auxiliary_mode
    ?auxiliary_sku ?dns_servers ?edge_zone
    ?enable_accelerated_networking ?enable_ip_forwarding ?id
    ?internal_dns_name_label ?ip_forwarding_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~ip_configuration __id =
  let __type = "azurerm_network_interface" in
  let __attrs =
    ({
       tf_name = __id;
       accelerated_networking_enabled =
         Prop.computed __type __id "accelerated_networking_enabled";
       applied_dns_servers =
         Prop.computed __type __id "applied_dns_servers";
       auxiliary_mode = Prop.computed __type __id "auxiliary_mode";
       auxiliary_sku = Prop.computed __type __id "auxiliary_sku";
       dns_servers = Prop.computed __type __id "dns_servers";
       edge_zone = Prop.computed __type __id "edge_zone";
       enable_accelerated_networking =
         Prop.computed __type __id "enable_accelerated_networking";
       enable_ip_forwarding =
         Prop.computed __type __id "enable_ip_forwarding";
       id = Prop.computed __type __id "id";
       internal_dns_name_label =
         Prop.computed __type __id "internal_dns_name_label";
       internal_domain_name_suffix =
         Prop.computed __type __id "internal_domain_name_suffix";
       ip_forwarding_enabled =
         Prop.computed __type __id "ip_forwarding_enabled";
       location = Prop.computed __type __id "location";
       mac_address = Prop.computed __type __id "mac_address";
       name = Prop.computed __type __id "name";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       private_ip_addresses =
         Prop.computed __type __id "private_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_interface
        (azurerm_network_interface ?accelerated_networking_enabled
           ?auxiliary_mode ?auxiliary_sku ?dns_servers ?edge_zone
           ?enable_accelerated_networking ?enable_ip_forwarding ?id
           ?internal_dns_name_label ?ip_forwarding_enabled ?tags
           ?timeouts ~location ~name ~resource_group_name
           ~ip_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?accelerated_networking_enabled
    ?auxiliary_mode ?auxiliary_sku ?dns_servers ?edge_zone
    ?enable_accelerated_networking ?enable_ip_forwarding ?id
    ?internal_dns_name_label ?ip_forwarding_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~ip_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?accelerated_networking_enabled ?auxiliary_mode
      ?auxiliary_sku ?dns_servers ?edge_zone
      ?enable_accelerated_networking ?enable_ip_forwarding ?id
      ?internal_dns_name_label ?ip_forwarding_enabled ?tags ?timeouts
      ~location ~name ~resource_group_name ~ip_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
