(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_nat__backend_config = {
  port : float prop;
  public_ip_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_nat__backend_config) -> ()

let yojson_of_destination_nat__backend_config =
  (function
   | { port = v_port; public_ip_address = v_public_ip_address } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address
         in
         ("public_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : destination_nat__backend_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_nat__backend_config

[@@@deriving.end]

type destination_nat__frontend_config = {
  port : float prop;
  public_ip_address_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_nat__frontend_config) -> ()

let yojson_of_destination_nat__frontend_config =
  (function
   | { port = v_port; public_ip_address_id = v_public_ip_address_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address_id
         in
         ("public_ip_address_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : destination_nat__frontend_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_nat__frontend_config

[@@@deriving.end]

type destination_nat = {
  name : string prop;
  protocol : string prop;
  backend_config : destination_nat__backend_config list;
  frontend_config : destination_nat__frontend_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_nat) -> ()

let yojson_of_destination_nat =
  (function
   | {
       name = v_name;
       protocol = v_protocol;
       backend_config = v_backend_config;
       frontend_config = v_frontend_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_nat__frontend_config
             v_frontend_config
         in
         ("frontend_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_nat__backend_config
             v_backend_config
         in
         ("backend_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : destination_nat -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_nat

[@@@deriving.end]

type dns_settings = {
  dns_servers : string prop list option; [@option]
  use_azure_dns : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_settings) -> ()

let yojson_of_dns_settings =
  (function
   | { dns_servers = v_dns_servers; use_azure_dns = v_use_azure_dns }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_azure_dns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_azure_dns", arg in
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
       `Assoc bnds
    : dns_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_settings

[@@@deriving.end]

type network_profile__vnet_configuration = {
  trusted_subnet_id : string prop option; [@option]
  untrusted_subnet_id : string prop option; [@option]
  virtual_network_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile__vnet_configuration) -> ()

let yojson_of_network_profile__vnet_configuration =
  (function
   | {
       trusted_subnet_id = v_trusted_subnet_id;
       untrusted_subnet_id = v_untrusted_subnet_id;
       virtual_network_id = v_virtual_network_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_network_id
         in
         ("virtual_network_id", arg) :: bnds
       in
       let bnds =
         match v_untrusted_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "untrusted_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trusted_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trusted_subnet_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_profile__vnet_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile__vnet_configuration

[@@@deriving.end]

type network_profile = {
  egress_nat_ip_address_ids : string prop list option; [@option]
  public_ip_address_ids : string prop list;
  trusted_address_ranges : string prop list option; [@option]
  vnet_configuration : network_profile__vnet_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile) -> ()

let yojson_of_network_profile =
  (function
   | {
       egress_nat_ip_address_ids = v_egress_nat_ip_address_ids;
       public_ip_address_ids = v_public_ip_address_ids;
       trusted_address_ranges = v_trusted_address_ranges;
       vnet_configuration = v_vnet_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_profile__vnet_configuration
             v_vnet_configuration
         in
         ("vnet_configuration", arg) :: bnds
       in
       let bnds =
         match v_trusted_address_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_address_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_public_ip_address_ids
         in
         ("public_ip_address_ids", arg) :: bnds
       in
       let bnds =
         match v_egress_nat_ip_address_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "egress_nat_ip_address_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile

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

type azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  rulestack_id : string prop;
  tags : (string * string prop) list option; [@option]
  destination_nat : destination_nat list;
  dns_settings : dns_settings list;
  network_profile : network_profile list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack) ->
  ()

let yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack
    =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       rulestack_id = v_rulestack_id;
       tags = v_tags;
       destination_nat = v_destination_nat;
       dns_settings = v_dns_settings;
       network_profile = v_network_profile;
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
           yojson_of_list yojson_of_network_profile v_network_profile
         in
         ("network_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dns_settings v_dns_settings
         in
         ("dns_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_nat v_destination_nat
         in
         ("destination_nat", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_rulestack_id in
         ("rulestack_id", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack

[@@@deriving.end]

let destination_nat__backend_config ~port ~public_ip_address () :
    destination_nat__backend_config =
  { port; public_ip_address }

let destination_nat__frontend_config ~port ~public_ip_address_id () :
    destination_nat__frontend_config =
  { port; public_ip_address_id }

let destination_nat ?(backend_config = []) ?(frontend_config = [])
    ~name ~protocol () : destination_nat =
  { name; protocol; backend_config; frontend_config }

let dns_settings ?dns_servers ?use_azure_dns () : dns_settings =
  { dns_servers; use_azure_dns }

let network_profile__vnet_configuration ?trusted_subnet_id
    ?untrusted_subnet_id ~virtual_network_id () :
    network_profile__vnet_configuration =
  { trusted_subnet_id; untrusted_subnet_id; virtual_network_id }

let network_profile ?egress_nat_ip_address_ids
    ?trusted_address_ranges ~public_ip_address_ids
    ~vnet_configuration () : network_profile =
  {
    egress_nat_ip_address_ids;
    public_ip_address_ids;
    trusted_address_ranges;
    vnet_configuration;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack
    ?id ?tags ?(destination_nat = []) ?(dns_settings = []) ?timeouts
    ~name ~resource_group_name ~rulestack_id ~network_profile () :
    azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack
    =
  {
    id;
    name;
    resource_group_name;
    rulestack_id;
    tags;
    destination_nat;
    dns_settings;
    network_profile;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  rulestack_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?(destination_nat = []) ?(dns_settings = [])
    ?timeouts ~name ~resource_group_name ~rulestack_id
    ~network_profile __id =
  let __type =
    "azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       rulestack_id = Prop.computed __type __id "rulestack_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack
        (azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack
           ?id ?tags ~destination_nat ~dns_settings ?timeouts ~name
           ~resource_group_name ~rulestack_id ~network_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(destination_nat = [])
    ?(dns_settings = []) ?timeouts ~name ~resource_group_name
    ~rulestack_id ~network_profile __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~destination_nat ~dns_settings ?timeouts ~name
      ~resource_group_name ~rulestack_id ~network_profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
