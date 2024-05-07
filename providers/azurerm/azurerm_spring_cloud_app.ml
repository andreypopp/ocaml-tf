(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_persistent_disk = {
  mount_options : string prop list option; [@option]
  mount_path : string prop;
  read_only_enabled : bool prop option; [@option]
  share_name : string prop;
  storage_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_persistent_disk) -> ()

let yojson_of_custom_persistent_disk =
  (function
   | {
       mount_options = v_mount_options;
       mount_path = v_mount_path;
       read_only_enabled = v_read_only_enabled;
       share_name = v_share_name;
       storage_name = v_storage_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_name in
         ("storage_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_share_name in
         ("share_name", arg) :: bnds
       in
       let bnds =
         match v_read_only_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_path in
         ("mount_path", arg) :: bnds
       in
       let bnds =
         match v_mount_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "mount_options", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_persistent_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_persistent_disk

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type ingress_settings = {
  backend_protocol : string prop option; [@option]
  read_timeout_in_seconds : float prop option; [@option]
  send_timeout_in_seconds : float prop option; [@option]
  session_affinity : string prop option; [@option]
  session_cookie_max_age : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress_settings) -> ()

let yojson_of_ingress_settings =
  (function
   | {
       backend_protocol = v_backend_protocol;
       read_timeout_in_seconds = v_read_timeout_in_seconds;
       send_timeout_in_seconds = v_send_timeout_in_seconds;
       session_affinity = v_session_affinity;
       session_cookie_max_age = v_session_cookie_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_session_cookie_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_cookie_max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_affinity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_send_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "send_timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "read_timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backend_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backend_protocol", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ingress_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress_settings

[@@@deriving.end]

type persistent_disk = {
  mount_path : string prop option; [@option]
  size_in_gb : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : persistent_disk) -> ()

let yojson_of_persistent_disk =
  (function
   | { mount_path = v_mount_path; size_in_gb = v_size_in_gb } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_in_gb in
         ("size_in_gb", arg) :: bnds
       in
       let bnds =
         match v_mount_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : persistent_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_persistent_disk

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

type azurerm_spring_cloud_app = {
  addon_json : string prop option; [@option]
  https_only : bool prop option; [@option]
  id : string prop option; [@option]
  is_public : bool prop option; [@option]
  name : string prop;
  public_endpoint_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  service_name : string prop;
  tls_enabled : bool prop option; [@option]
  custom_persistent_disk : custom_persistent_disk list;
  identity : identity list;
  ingress_settings : ingress_settings list;
  persistent_disk : persistent_disk list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_app) -> ()

let yojson_of_azurerm_spring_cloud_app =
  (function
   | {
       addon_json = v_addon_json;
       https_only = v_https_only;
       id = v_id;
       is_public = v_is_public;
       name = v_name;
       public_endpoint_enabled = v_public_endpoint_enabled;
       resource_group_name = v_resource_group_name;
       service_name = v_service_name;
       tls_enabled = v_tls_enabled;
       custom_persistent_disk = v_custom_persistent_disk;
       identity = v_identity;
       ingress_settings = v_ingress_settings;
       persistent_disk = v_persistent_disk;
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
           yojson_of_list yojson_of_persistent_disk v_persistent_disk
         in
         ("persistent_disk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ingress_settings
             v_ingress_settings
         in
         ("ingress_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_persistent_disk
             v_custom_persistent_disk
         in
         ("custom_persistent_disk", arg) :: bnds
       in
       let bnds =
         match v_tls_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_endpoint_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_public with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_public", arg in
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
         match v_https_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_addon_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "addon_json", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_app

[@@@deriving.end]

let custom_persistent_disk ?mount_options ?read_only_enabled
    ~mount_path ~share_name ~storage_name () : custom_persistent_disk
    =
  {
    mount_options;
    mount_path;
    read_only_enabled;
    share_name;
    storage_name;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let ingress_settings ?backend_protocol ?read_timeout_in_seconds
    ?send_timeout_in_seconds ?session_affinity
    ?session_cookie_max_age () : ingress_settings =
  {
    backend_protocol;
    read_timeout_in_seconds;
    send_timeout_in_seconds;
    session_affinity;
    session_cookie_max_age;
  }

let persistent_disk ?mount_path ~size_in_gb () : persistent_disk =
  { mount_path; size_in_gb }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_app ?addon_json ?https_only ?id ?is_public
    ?public_endpoint_enabled ?tls_enabled
    ?(custom_persistent_disk = []) ?(identity = [])
    ?(ingress_settings = []) ?(persistent_disk = []) ?timeouts ~name
    ~resource_group_name ~service_name () : azurerm_spring_cloud_app
    =
  {
    addon_json;
    https_only;
    id;
    is_public;
    name;
    public_endpoint_enabled;
    resource_group_name;
    service_name;
    tls_enabled;
    custom_persistent_disk;
    identity;
    ingress_settings;
    persistent_disk;
    timeouts;
  }

type t = {
  tf_name : string;
  addon_json : string prop;
  fqdn : string prop;
  https_only : bool prop;
  id : string prop;
  is_public : bool prop;
  name : string prop;
  public_endpoint_enabled : bool prop;
  resource_group_name : string prop;
  service_name : string prop;
  tls_enabled : bool prop;
  url : string prop;
}

let make ?addon_json ?https_only ?id ?is_public
    ?public_endpoint_enabled ?tls_enabled
    ?(custom_persistent_disk = []) ?(identity = [])
    ?(ingress_settings = []) ?(persistent_disk = []) ?timeouts ~name
    ~resource_group_name ~service_name __id =
  let __type = "azurerm_spring_cloud_app" in
  let __attrs =
    ({
       tf_name = __id;
       addon_json = Prop.computed __type __id "addon_json";
       fqdn = Prop.computed __type __id "fqdn";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       is_public = Prop.computed __type __id "is_public";
       name = Prop.computed __type __id "name";
       public_endpoint_enabled =
         Prop.computed __type __id "public_endpoint_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_name = Prop.computed __type __id "service_name";
       tls_enabled = Prop.computed __type __id "tls_enabled";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_app
        (azurerm_spring_cloud_app ?addon_json ?https_only ?id
           ?is_public ?public_endpoint_enabled ?tls_enabled
           ~custom_persistent_disk ~identity ~ingress_settings
           ~persistent_disk ?timeouts ~name ~resource_group_name
           ~service_name ());
    attrs = __attrs;
  }

let register ?tf_module ?addon_json ?https_only ?id ?is_public
    ?public_endpoint_enabled ?tls_enabled
    ?(custom_persistent_disk = []) ?(identity = [])
    ?(ingress_settings = []) ?(persistent_disk = []) ?timeouts ~name
    ~resource_group_name ~service_name __id =
  let (r : _ Tf_core.resource) =
    make ?addon_json ?https_only ?id ?is_public
      ?public_endpoint_enabled ?tls_enabled ~custom_persistent_disk
      ~identity ~ingress_settings ~persistent_disk ?timeouts ~name
      ~resource_group_name ~service_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
