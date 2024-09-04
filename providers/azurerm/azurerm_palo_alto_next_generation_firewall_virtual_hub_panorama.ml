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
      [@default []] [@yojson_drop_default Stdlib.( = )]
  frontend_config : destination_nat__frontend_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_frontend_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_nat__frontend_config)
               v_frontend_config
           in
           let bnd = "frontend_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backend_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_nat__backend_config)
               v_backend_config
           in
           let bnd = "backend_config", arg in
           bnd :: bnds
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

type network_profile = {
  egress_nat_ip_address_ids : string prop list option; [@option]
  network_virtual_appliance_id : string prop;
  public_ip_address_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  trusted_address_ranges : string prop list option; [@option]
  virtual_hub_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile) -> ()

let yojson_of_network_profile =
  (function
   | {
       egress_nat_ip_address_ids = v_egress_nat_ip_address_ids;
       network_virtual_appliance_id = v_network_virtual_appliance_id;
       public_ip_address_ids = v_public_ip_address_ids;
       trusted_address_ranges = v_trusted_address_ranges;
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
         if Stdlib.( = ) [] v_public_ip_address_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_public_ip_address_ids
           in
           let bnd = "public_ip_address_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_network_virtual_appliance_id
         in
         ("network_virtual_appliance_id", arg) :: bnds
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

type panorama = {
  device_group_name : string prop;
  host_name : string prop;
  name : string prop;
  panorama_server_1 : string prop;
  panorama_server_2 : string prop;
  template_name : string prop;
  virtual_machine_ssh_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : panorama) -> ()

let yojson_of_panorama =
  (function
   | {
       device_group_name = v_device_group_name;
       host_name = v_host_name;
       name = v_name;
       panorama_server_1 = v_panorama_server_1;
       panorama_server_2 = v_panorama_server_2;
       template_name = v_template_name;
       virtual_machine_ssh_key = v_virtual_machine_ssh_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_ssh_key
         in
         ("virtual_machine_ssh_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_template_name in
         ("template_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_panorama_server_2
         in
         ("panorama_server_2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_panorama_server_1
         in
         ("panorama_server_1", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_group_name
         in
         ("device_group_name", arg) :: bnds
       in
       `Assoc bnds
    : panorama -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_panorama

[@@@deriving.end]

type azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  panorama_base64_config : string prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  destination_nat : destination_nat list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dns_settings : dns_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_profile : network_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama) ->
  ()

let yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama
    =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       panorama_base64_config = v_panorama_base64_config;
       resource_group_name = v_resource_group_name;
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
         if Stdlib.( = ) [] v_network_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_profile)
               v_network_profile
           in
           let bnd = "network_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dns_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dns_settings) v_dns_settings
           in
           let bnd = "dns_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_nat then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_nat)
               v_destination_nat
           in
           let bnd = "destination_nat", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_panorama_base64_config
         in
         ("panorama_base64_config", arg) :: bnds
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
       `Assoc bnds
    : azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama

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

let network_profile ?egress_nat_ip_address_ids
    ?trusted_address_ranges ~network_virtual_appliance_id
    ~public_ip_address_ids ~virtual_hub_id () : network_profile =
  {
    egress_nat_ip_address_ids;
    network_virtual_appliance_id;
    public_ip_address_ids;
    trusted_address_ranges;
    virtual_hub_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama
    ?id ?tags ?(destination_nat = []) ?(dns_settings = []) ?timeouts
    ~location ~name ~panorama_base64_config ~resource_group_name
    ~network_profile () :
    azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama =
  {
    id;
    location;
    name;
    panorama_base64_config;
    resource_group_name;
    tags;
    destination_nat;
    dns_settings;
    network_profile;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  panorama : panorama list prop;
  panorama_base64_config : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ?(destination_nat = []) ?(dns_settings = [])
    ?timeouts ~location ~name ~panorama_base64_config
    ~resource_group_name ~network_profile __id =
  let __type =
    "azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       panorama = Prop.computed __type __id "panorama";
       panorama_base64_config =
         Prop.computed __type __id "panorama_base64_config";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama
        (azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama
           ?id ?tags ~destination_nat ~dns_settings ?timeouts
           ~location ~name ~panorama_base64_config
           ~resource_group_name ~network_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(destination_nat = [])
    ?(dns_settings = []) ?timeouts ~location ~name
    ~panorama_base64_config ~resource_group_name ~network_profile
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~destination_nat ~dns_settings ?timeouts ~location
      ~name ~panorama_base64_config ~resource_group_name
      ~network_profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
