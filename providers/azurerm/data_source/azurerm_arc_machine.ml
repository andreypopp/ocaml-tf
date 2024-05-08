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

type agent__extensions_block_list = {
  publisher : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : agent__extensions_block_list) -> ()

let yojson_of_agent__extensions_block_list =
  (function
   | { publisher = v_publisher; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       `Assoc bnds
    : agent__extensions_block_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_agent__extensions_block_list

[@@@deriving.end]

type agent__extensions_allow_list = {
  publisher : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : agent__extensions_allow_list) -> ()

let yojson_of_agent__extensions_allow_list =
  (function
   | { publisher = v_publisher; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       `Assoc bnds
    : agent__extensions_allow_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_agent__extensions_allow_list

[@@@deriving.end]

type agent = {
  extensions_allow_list : agent__extensions_allow_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extensions_block_list : agent__extensions_block_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extensions_enabled : bool prop;
  guest_configuration_enabled : bool prop;
  incoming_connections_ports : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  proxy_bypass : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  proxy_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : agent) -> ()

let yojson_of_agent =
  (function
   | {
       extensions_allow_list = v_extensions_allow_list;
       extensions_block_list = v_extensions_block_list;
       extensions_enabled = v_extensions_enabled;
       guest_configuration_enabled = v_guest_configuration_enabled;
       incoming_connections_ports = v_incoming_connections_ports;
       proxy_bypass = v_proxy_bypass;
       proxy_url = v_proxy_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_proxy_url in
         ("proxy_url", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_proxy_bypass then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_proxy_bypass
           in
           let bnd = "proxy_bypass", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_incoming_connections_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_incoming_connections_ports
           in
           let bnd = "incoming_connections_ports", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_guest_configuration_enabled
         in
         ("guest_configuration_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_extensions_enabled
         in
         ("extensions_enabled", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extensions_block_list then bnds
         else
           let arg =
             (yojson_of_list yojson_of_agent__extensions_block_list)
               v_extensions_block_list
           in
           let bnd = "extensions_block_list", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extensions_allow_list then bnds
         else
           let arg =
             (yojson_of_list yojson_of_agent__extensions_allow_list)
               v_extensions_allow_list
           in
           let bnd = "extensions_allow_list", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : agent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_agent

[@@@deriving.end]

type cloud_metadata = { provider : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cloud_metadata) -> ()

let yojson_of_cloud_metadata =
  (function
   | { provider = v_provider } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider in
         ("provider", arg) :: bnds
       in
       `Assoc bnds
    : cloud_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloud_metadata

[@@@deriving.end]

type identity = {
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
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
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type location_data = {
  city : string prop;
  country_or_region : string prop;
  district : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : location_data) -> ()

let yojson_of_location_data =
  (function
   | {
       city = v_city;
       country_or_region = v_country_or_region;
       district = v_district;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_district in
         ("district", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_country_or_region
         in
         ("country_or_region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_city in
         ("city", arg) :: bnds
       in
       `Assoc bnds
    : location_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_location_data

[@@@deriving.end]

type os_profile__windows__patch = {
  assessment_mode : string prop;
  patch_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile__windows__patch) -> ()

let yojson_of_os_profile__windows__patch =
  (function
   | {
       assessment_mode = v_assessment_mode;
       patch_mode = v_patch_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_patch_mode in
         ("patch_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_assessment_mode
         in
         ("assessment_mode", arg) :: bnds
       in
       `Assoc bnds
    : os_profile__windows__patch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__windows__patch

[@@@deriving.end]

type os_profile__windows = {
  patch : os_profile__windows__patch list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile__windows) -> ()

let yojson_of_os_profile__windows =
  (function
   | { patch = v_patch } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_patch then bnds
         else
           let arg =
             (yojson_of_list yojson_of_os_profile__windows__patch)
               v_patch
           in
           let bnd = "patch", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : os_profile__windows -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__windows

[@@@deriving.end]

type os_profile__linux__patch = {
  assessment_mode : string prop;
  patch_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile__linux__patch) -> ()

let yojson_of_os_profile__linux__patch =
  (function
   | {
       assessment_mode = v_assessment_mode;
       patch_mode = v_patch_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_patch_mode in
         ("patch_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_assessment_mode
         in
         ("assessment_mode", arg) :: bnds
       in
       `Assoc bnds
    : os_profile__linux__patch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__linux__patch

[@@@deriving.end]

type os_profile__linux = {
  patch : os_profile__linux__patch list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile__linux) -> ()

let yojson_of_os_profile__linux =
  (function
   | { patch = v_patch } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_patch then bnds
         else
           let arg =
             (yojson_of_list yojson_of_os_profile__linux__patch)
               v_patch
           in
           let bnd = "patch", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : os_profile__linux -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__linux

[@@@deriving.end]

type os_profile = {
  computer_name : string prop;
  linux : os_profile__linux list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  windows : os_profile__windows list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile) -> ()

let yojson_of_os_profile =
  (function
   | {
       computer_name = v_computer_name;
       linux = v_linux;
       windows = v_windows;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_windows then bnds
         else
           let arg =
             (yojson_of_list yojson_of_os_profile__windows) v_windows
           in
           let bnd = "windows", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linux then bnds
         else
           let arg =
             (yojson_of_list yojson_of_os_profile__linux) v_linux
           in
           let bnd = "linux", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_computer_name in
         ("computer_name", arg) :: bnds
       in
       `Assoc bnds
    : os_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile

[@@@deriving.end]

type service_status__guest_configuration_service = {
  startup_type : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_status__guest_configuration_service) -> ()

let yojson_of_service_status__guest_configuration_service =
  (function
   | { startup_type = v_startup_type; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_startup_type in
         ("startup_type", arg) :: bnds
       in
       `Assoc bnds
    : service_status__guest_configuration_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_status__guest_configuration_service

[@@@deriving.end]

type service_status__extension_service = {
  startup_type : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_status__extension_service) -> ()

let yojson_of_service_status__extension_service =
  (function
   | { startup_type = v_startup_type; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_startup_type in
         ("startup_type", arg) :: bnds
       in
       `Assoc bnds
    : service_status__extension_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_status__extension_service

[@@@deriving.end]

type service_status = {
  extension_service : service_status__extension_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  guest_configuration_service :
    service_status__guest_configuration_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_status) -> ()

let yojson_of_service_status =
  (function
   | {
       extension_service = v_extension_service;
       guest_configuration_service = v_guest_configuration_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_guest_configuration_service then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_status__guest_configuration_service)
               v_guest_configuration_service
           in
           let bnd = "guest_configuration_service", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extension_service then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_status__extension_service)
               v_extension_service
           in
           let bnd = "extension_service", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : service_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_status

[@@@deriving.end]

type azurerm_arc_machine = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_arc_machine) -> ()

let yojson_of_azurerm_arc_machine =
  (function
   | {
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
       `Assoc bnds
    : azurerm_arc_machine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_arc_machine

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_arc_machine ?id ?timeouts ~name ~resource_group_name () :
    azurerm_arc_machine =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  active_directory_fqdn : string prop;
  agent : agent list prop;
  agent_version : string prop;
  client_public_key : string prop;
  cloud_metadata : cloud_metadata list prop;
  detected_properties : (string * string) list prop;
  display_name : string prop;
  dns_fqdn : string prop;
  domain_name : string prop;
  id : string prop;
  identity : identity list prop;
  last_status_change_time : string prop;
  location : string prop;
  location_data : location_data list prop;
  machine_fqdn : string prop;
  mssql_discovered : bool prop;
  name : string prop;
  os_name : string prop;
  os_profile : os_profile list prop;
  os_sku : string prop;
  os_type : string prop;
  os_version : string prop;
  parent_cluster_resource_id : string prop;
  private_link_scope_resource_id : string prop;
  resource_group_name : string prop;
  service_status : service_status list prop;
  status : string prop;
  tags : (string * string) list prop;
  vm_id : string prop;
  vm_uuid : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_arc_machine" in
  let __attrs =
    ({
       tf_name = __id;
       active_directory_fqdn =
         Prop.computed __type __id "active_directory_fqdn";
       agent = Prop.computed __type __id "agent";
       agent_version = Prop.computed __type __id "agent_version";
       client_public_key =
         Prop.computed __type __id "client_public_key";
       cloud_metadata = Prop.computed __type __id "cloud_metadata";
       detected_properties =
         Prop.computed __type __id "detected_properties";
       display_name = Prop.computed __type __id "display_name";
       dns_fqdn = Prop.computed __type __id "dns_fqdn";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       last_status_change_time =
         Prop.computed __type __id "last_status_change_time";
       location = Prop.computed __type __id "location";
       location_data = Prop.computed __type __id "location_data";
       machine_fqdn = Prop.computed __type __id "machine_fqdn";
       mssql_discovered =
         Prop.computed __type __id "mssql_discovered";
       name = Prop.computed __type __id "name";
       os_name = Prop.computed __type __id "os_name";
       os_profile = Prop.computed __type __id "os_profile";
       os_sku = Prop.computed __type __id "os_sku";
       os_type = Prop.computed __type __id "os_type";
       os_version = Prop.computed __type __id "os_version";
       parent_cluster_resource_id =
         Prop.computed __type __id "parent_cluster_resource_id";
       private_link_scope_resource_id =
         Prop.computed __type __id "private_link_scope_resource_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_status = Prop.computed __type __id "service_status";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       vm_id = Prop.computed __type __id "vm_id";
       vm_uuid = Prop.computed __type __id "vm_uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_arc_machine
        (azurerm_arc_machine ?id ?timeouts ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
