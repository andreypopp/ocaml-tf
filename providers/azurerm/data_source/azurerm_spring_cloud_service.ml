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

type config_server_git_setting__ssh_auth = {
  host_key : string prop;
  host_key_algorithm : string prop;
  private_key : string prop;
  strict_host_key_checking_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_server_git_setting__ssh_auth) -> ()

let yojson_of_config_server_git_setting__ssh_auth =
  (function
   | {
       host_key = v_host_key;
       host_key_algorithm = v_host_key_algorithm;
       private_key = v_private_key;
       strict_host_key_checking_enabled =
         v_strict_host_key_checking_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_strict_host_key_checking_enabled
         in
         ("strict_host_key_checking_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_host_key_algorithm
         in
         ("host_key_algorithm", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_key in
         ("host_key", arg) :: bnds
       in
       `Assoc bnds
    : config_server_git_setting__ssh_auth ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_server_git_setting__ssh_auth

[@@@deriving.end]

type config_server_git_setting__repository__ssh_auth = {
  host_key : string prop;
  host_key_algorithm : string prop;
  private_key : string prop;
  strict_host_key_checking_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : config_server_git_setting__repository__ssh_auth) -> ()

let yojson_of_config_server_git_setting__repository__ssh_auth =
  (function
   | {
       host_key = v_host_key;
       host_key_algorithm = v_host_key_algorithm;
       private_key = v_private_key;
       strict_host_key_checking_enabled =
         v_strict_host_key_checking_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_strict_host_key_checking_enabled
         in
         ("strict_host_key_checking_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_host_key_algorithm
         in
         ("host_key_algorithm", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_key in
         ("host_key", arg) :: bnds
       in
       `Assoc bnds
    : config_server_git_setting__repository__ssh_auth ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_server_git_setting__repository__ssh_auth

[@@@deriving.end]

type config_server_git_setting__repository__http_basic_auth = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : config_server_git_setting__repository__http_basic_auth) ->
  ()

let yojson_of_config_server_git_setting__repository__http_basic_auth
    =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : config_server_git_setting__repository__http_basic_auth ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_config_server_git_setting__repository__http_basic_auth

[@@@deriving.end]

type config_server_git_setting__repository = {
  http_basic_auth :
    config_server_git_setting__repository__http_basic_auth list;
  label : string prop;
  name : string prop;
  pattern : string prop list;
  search_paths : string prop list;
  ssh_auth : config_server_git_setting__repository__ssh_auth list;
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_server_git_setting__repository) -> ()

let yojson_of_config_server_git_setting__repository =
  (function
   | {
       http_basic_auth = v_http_basic_auth;
       label = v_label;
       name = v_name;
       pattern = v_pattern;
       search_paths = v_search_paths;
       ssh_auth = v_ssh_auth;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_config_server_git_setting__repository__ssh_auth
             v_ssh_auth
         in
         ("ssh_auth", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_search_paths
         in
         ("search_paths", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_pattern
         in
         ("pattern", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_config_server_git_setting__repository__http_basic_auth
             v_http_basic_auth
         in
         ("http_basic_auth", arg) :: bnds
       in
       `Assoc bnds
    : config_server_git_setting__repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_server_git_setting__repository

[@@@deriving.end]

type config_server_git_setting__http_basic_auth = {
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_server_git_setting__http_basic_auth) -> ()

let yojson_of_config_server_git_setting__http_basic_auth =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : config_server_git_setting__http_basic_auth ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_server_git_setting__http_basic_auth

[@@@deriving.end]

type config_server_git_setting = {
  http_basic_auth : config_server_git_setting__http_basic_auth list;
  label : string prop;
  repository : config_server_git_setting__repository list;
  search_paths : string prop list;
  ssh_auth : config_server_git_setting__ssh_auth list;
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config_server_git_setting) -> ()

let yojson_of_config_server_git_setting =
  (function
   | {
       http_basic_auth = v_http_basic_auth;
       label = v_label;
       repository = v_repository;
       search_paths = v_search_paths;
       ssh_auth = v_ssh_auth;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_config_server_git_setting__ssh_auth v_ssh_auth
         in
         ("ssh_auth", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_search_paths
         in
         ("search_paths", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_config_server_git_setting__repository
             v_repository
         in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_config_server_git_setting__http_basic_auth
             v_http_basic_auth
         in
         ("http_basic_auth", arg) :: bnds
       in
       `Assoc bnds
    : config_server_git_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config_server_git_setting

[@@@deriving.end]

type required_network_traffic_rules = {
  direction : string prop;
  fqdns : string prop list;
  ip_addresses : string prop list;
  port : float prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : required_network_traffic_rules) -> ()

let yojson_of_required_network_traffic_rules =
  (function
   | {
       direction = v_direction;
       fqdns = v_fqdns;
       ip_addresses = v_ip_addresses;
       port = v_port;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_fqdns
         in
         ("fqdns", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       `Assoc bnds
    : required_network_traffic_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_required_network_traffic_rules

[@@@deriving.end]

type azurerm_spring_cloud_service = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_service) -> ()

let yojson_of_azurerm_spring_cloud_service =
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
    : azurerm_spring_cloud_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_service

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_spring_cloud_service ?id ?timeouts ~name
    ~resource_group_name () : azurerm_spring_cloud_service =
  { id; name; resource_group_name; timeouts }

type t = {
  config_server_git_setting : config_server_git_setting list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_public_ip_addresses : string list prop;
  required_network_traffic_rules :
    required_network_traffic_rules list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_spring_cloud_service" in
  let __attrs =
    ({
       config_server_git_setting =
         Prop.computed __type __id "config_server_git_setting";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_public_ip_addresses =
         Prop.computed __type __id "outbound_public_ip_addresses";
       required_network_traffic_rules =
         Prop.computed __type __id "required_network_traffic_rules";
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
      yojson_of_azurerm_spring_cloud_service
        (azurerm_spring_cloud_service ?id ?timeouts ~name
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
