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

type agent_configuration__extensions_block_list = {
  publisher : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : agent_configuration__extensions_block_list) -> ()

let yojson_of_agent_configuration__extensions_block_list =
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
    : agent_configuration__extensions_block_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_agent_configuration__extensions_block_list

[@@@deriving.end]

type agent_configuration__extensions_allow_list = {
  publisher : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : agent_configuration__extensions_allow_list) -> ()

let yojson_of_agent_configuration__extensions_allow_list =
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
    : agent_configuration__extensions_allow_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_agent_configuration__extensions_allow_list

[@@@deriving.end]

type agent_configuration = {
  extensions_allow_list :
    agent_configuration__extensions_allow_list list;
  extensions_block_list :
    agent_configuration__extensions_block_list list;
  extensions_enabled : bool prop;
  guest_configuration_enabled : bool prop;
  incoming_connections_ports : string prop list;
  proxy_bypass : string prop list;
  proxy_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : agent_configuration) -> ()

let yojson_of_agent_configuration =
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_proxy_bypass
         in
         ("proxy_bypass", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_incoming_connections_ports
         in
         ("incoming_connections_ports", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_agent_configuration__extensions_block_list
             v_extensions_block_list
         in
         ("extensions_block_list", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_agent_configuration__extensions_allow_list
             v_extensions_allow_list
         in
         ("extensions_allow_list", arg) :: bnds
       in
       `Assoc bnds
    : agent_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_agent_configuration

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

type error_details__additional_info = {
  info : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_details__additional_info) -> ()

let yojson_of_error_details__additional_info =
  (function
   | { info = v_info; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_info in
         ("info", arg) :: bnds
       in
       `Assoc bnds
    : error_details__additional_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_details__additional_info

[@@@deriving.end]

type error_details = {
  additional_info : error_details__additional_info list;
  code : string prop;
  message : string prop;
  target : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_details) -> ()

let yojson_of_error_details =
  (function
   | {
       additional_info = v_additional_info;
       code = v_code;
       message = v_message;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_error_details__additional_info
             v_additional_info
         in
         ("additional_info", arg) :: bnds
       in
       `Assoc bnds
    : error_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_details

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

type os_profile__windows_configuration__patch_settings = {
  assessment_mode : string prop;
  patch_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_profile__windows_configuration__patch_settings) -> ()

let yojson_of_os_profile__windows_configuration__patch_settings =
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
    : os_profile__windows_configuration__patch_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__windows_configuration__patch_settings

[@@@deriving.end]

type os_profile__windows_configuration = {
  patch_settings :
    os_profile__windows_configuration__patch_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile__windows_configuration) -> ()

let yojson_of_os_profile__windows_configuration =
  (function
   | { patch_settings = v_patch_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_profile__windows_configuration__patch_settings
             v_patch_settings
         in
         ("patch_settings", arg) :: bnds
       in
       `Assoc bnds
    : os_profile__windows_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__windows_configuration

[@@@deriving.end]

type os_profile__linux_configuration__patch_settings = {
  assessment_mode : string prop;
  patch_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_profile__linux_configuration__patch_settings) -> ()

let yojson_of_os_profile__linux_configuration__patch_settings =
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
    : os_profile__linux_configuration__patch_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__linux_configuration__patch_settings

[@@@deriving.end]

type os_profile__linux_configuration = {
  patch_settings :
    os_profile__linux_configuration__patch_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile__linux_configuration) -> ()

let yojson_of_os_profile__linux_configuration =
  (function
   | { patch_settings = v_patch_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_profile__linux_configuration__patch_settings
             v_patch_settings
         in
         ("patch_settings", arg) :: bnds
       in
       `Assoc bnds
    : os_profile__linux_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__linux_configuration

[@@@deriving.end]

type os_profile = {
  computer_name : string prop;
  linux_configuration : os_profile__linux_configuration list;
  windows_configuration : os_profile__windows_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile) -> ()

let yojson_of_os_profile =
  (function
   | {
       computer_name = v_computer_name;
       linux_configuration = v_linux_configuration;
       windows_configuration = v_windows_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_profile__windows_configuration
             v_windows_configuration
         in
         ("windows_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_profile__linux_configuration
             v_linux_configuration
         in
         ("linux_configuration", arg) :: bnds
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
  guest_configuration_service :
    service_status__guest_configuration_service list;
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
         let arg =
           yojson_of_list
             yojson_of_service_status__guest_configuration_service
             v_guest_configuration_service
         in
         ("guest_configuration_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_service_status__extension_service
             v_extension_service
         in
         ("extension_service", arg) :: bnds
       in
       `Assoc bnds
    : service_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_status

[@@@deriving.end]

type azurerm_hybrid_compute_machine = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_hybrid_compute_machine) -> ()

let yojson_of_azurerm_hybrid_compute_machine =
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
    : azurerm_hybrid_compute_machine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_hybrid_compute_machine

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_hybrid_compute_machine ?id ?timeouts ~name
    ~resource_group_name () : azurerm_hybrid_compute_machine =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  ad_fqdn : string prop;
  agent_configuration : agent_configuration list prop;
  agent_version : string prop;
  client_public_key : string prop;
  cloud_metadata : cloud_metadata list prop;
  detected_properties : (string * string) list prop;
  display_name : string prop;
  dns_fqdn : string prop;
  domain_name : string prop;
  error_details : error_details list prop;
  id : string prop;
  identity : identity list prop;
  last_status_change : string prop;
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
  let __type = "azurerm_hybrid_compute_machine" in
  let __attrs =
    ({
       tf_name = __id;
       ad_fqdn = Prop.computed __type __id "ad_fqdn";
       agent_configuration =
         Prop.computed __type __id "agent_configuration";
       agent_version = Prop.computed __type __id "agent_version";
       client_public_key =
         Prop.computed __type __id "client_public_key";
       cloud_metadata = Prop.computed __type __id "cloud_metadata";
       detected_properties =
         Prop.computed __type __id "detected_properties";
       display_name = Prop.computed __type __id "display_name";
       dns_fqdn = Prop.computed __type __id "dns_fqdn";
       domain_name = Prop.computed __type __id "domain_name";
       error_details = Prop.computed __type __id "error_details";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       last_status_change =
         Prop.computed __type __id "last_status_change";
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
      yojson_of_azurerm_hybrid_compute_machine
        (azurerm_hybrid_compute_machine ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
