(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type ip_configuration = {
  name : string prop;
  private_ip_address : string prop;
  public_ip_address_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ip_configuration) -> ()

let yojson_of_ip_configuration =
  (function
   | {
       name = v_name;
       private_ip_address = v_private_ip_address;
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
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
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
  private_ip_address : string prop;
  public_ip_address_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management_ip_configuration) -> ()

let yojson_of_management_ip_configuration =
  (function
   | {
       name = v_name;
       private_ip_address = v_private_ip_address;
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
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
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

type virtual_hub = {
  private_ip_address : string prop;
  public_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  public_ip_count : float prop;
  virtual_hub_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_hub) -> ()

let yojson_of_virtual_hub =
  (function
   | {
       private_ip_address = v_private_ip_address;
       public_ip_addresses = v_public_ip_addresses;
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
         let arg =
           yojson_of_prop yojson_of_float v_public_ip_count
         in
         ("public_ip_count", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_public_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_public_ip_addresses
           in
           let bnd = "public_ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       `Assoc bnds
    : virtual_hub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_hub

[@@@deriving.end]

type azurerm_firewall = {
  dns_proxy_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_firewall) -> ()

let yojson_of_azurerm_firewall =
  (function
   | {
       dns_proxy_enabled = v_dns_proxy_enabled;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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

let timeouts ?read () : timeouts = { read }

let azurerm_firewall ?dns_proxy_enabled ?id ?timeouts ~name
    ~resource_group_name () : azurerm_firewall =
  { dns_proxy_enabled; id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  dns_proxy_enabled : bool prop;
  dns_servers : string list prop;
  firewall_policy_id : string prop;
  id : string prop;
  ip_configuration : ip_configuration list prop;
  location : string prop;
  management_ip_configuration :
    management_ip_configuration list prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  sku_tier : string prop;
  tags : string Tf_core.assoc prop;
  threat_intel_mode : string prop;
  virtual_hub : virtual_hub list prop;
  zones : string list prop;
}

let make ?dns_proxy_enabled ?id ?timeouts ~name ~resource_group_name
    __id =
  let __type = "azurerm_firewall" in
  let __attrs =
    ({
       tf_name = __id;
       dns_proxy_enabled =
         Prop.computed __type __id "dns_proxy_enabled";
       dns_servers = Prop.computed __type __id "dns_servers";
       firewall_policy_id =
         Prop.computed __type __id "firewall_policy_id";
       id = Prop.computed __type __id "id";
       ip_configuration =
         Prop.computed __type __id "ip_configuration";
       location = Prop.computed __type __id "location";
       management_ip_configuration =
         Prop.computed __type __id "management_ip_configuration";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       sku_tier = Prop.computed __type __id "sku_tier";
       tags = Prop.computed __type __id "tags";
       threat_intel_mode =
         Prop.computed __type __id "threat_intel_mode";
       virtual_hub = Prop.computed __type __id "virtual_hub";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_firewall
        (azurerm_firewall ?dns_proxy_enabled ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_proxy_enabled ?id ?timeouts ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?dns_proxy_enabled ?id ?timeouts ~name ~resource_group_name
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
