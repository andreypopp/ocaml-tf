(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type self_service_permissions = {
  change_compute_type : bool prop option; [@option]
  increase_volume_size : bool prop option; [@option]
  rebuild_workspace : bool prop option; [@option]
  restart_workspace : bool prop option; [@option]
  switch_running_mode : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : self_service_permissions) -> ()

let yojson_of_self_service_permissions =
  (function
   | {
       change_compute_type = v_change_compute_type;
       increase_volume_size = v_increase_volume_size;
       rebuild_workspace = v_rebuild_workspace;
       restart_workspace = v_restart_workspace;
       switch_running_mode = v_switch_running_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_switch_running_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "switch_running_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restart_workspace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "restart_workspace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rebuild_workspace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rebuild_workspace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_increase_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "increase_volume_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_change_compute_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "change_compute_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : self_service_permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_self_service_permissions

[@@@deriving.end]

type workspace_access_properties = {
  device_type_android : string prop option; [@option]
  device_type_chromeos : string prop option; [@option]
  device_type_ios : string prop option; [@option]
  device_type_linux : string prop option; [@option]
  device_type_osx : string prop option; [@option]
  device_type_web : string prop option; [@option]
  device_type_windows : string prop option; [@option]
  device_type_zeroclient : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workspace_access_properties) -> ()

let yojson_of_workspace_access_properties =
  (function
   | {
       device_type_android = v_device_type_android;
       device_type_chromeos = v_device_type_chromeos;
       device_type_ios = v_device_type_ios;
       device_type_linux = v_device_type_linux;
       device_type_osx = v_device_type_osx;
       device_type_web = v_device_type_web;
       device_type_windows = v_device_type_windows;
       device_type_zeroclient = v_device_type_zeroclient;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_device_type_zeroclient with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type_zeroclient", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_type_windows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type_windows", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_type_web with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type_web", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_type_osx with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type_osx", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_type_linux with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type_linux", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_type_ios with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type_ios", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_type_chromeos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type_chromeos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_type_android with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type_android", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workspace_access_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workspace_access_properties

[@@@deriving.end]

type workspace_creation_properties = {
  custom_security_group_id : string prop option; [@option]
  default_ou : string prop option; [@option]
  enable_internet_access : bool prop option; [@option]
  enable_maintenance_mode : bool prop option; [@option]
  user_enabled_as_local_administrator : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workspace_creation_properties) -> ()

let yojson_of_workspace_creation_properties =
  (function
   | {
       custom_security_group_id = v_custom_security_group_id;
       default_ou = v_default_ou;
       enable_internet_access = v_enable_internet_access;
       enable_maintenance_mode = v_enable_maintenance_mode;
       user_enabled_as_local_administrator =
         v_user_enabled_as_local_administrator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_enabled_as_local_administrator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "user_enabled_as_local_administrator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_maintenance_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_maintenance_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_internet_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_internet_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_ou with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_ou", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_security_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_security_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workspace_creation_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workspace_creation_properties

[@@@deriving.end]

type aws_workspaces_directory = {
  directory_id : string prop;
  id : string prop option; [@option]
  ip_group_ids : string prop list option; [@option]
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  self_service_permissions : self_service_permissions list;
  workspace_access_properties : workspace_access_properties list;
  workspace_creation_properties : workspace_creation_properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_workspaces_directory) -> ()

let yojson_of_aws_workspaces_directory =
  (function
   | {
       directory_id = v_directory_id;
       id = v_id;
       ip_group_ids = v_ip_group_ids;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       self_service_permissions = v_self_service_permissions;
       workspace_access_properties = v_workspace_access_properties;
       workspace_creation_properties =
         v_workspace_creation_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_workspace_creation_properties
             v_workspace_creation_properties
         in
         ("workspace_creation_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_workspace_access_properties
             v_workspace_access_properties
         in
         ("workspace_access_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_self_service_permissions
             v_self_service_permissions
         in
         ("self_service_permissions", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_group_ids", arg in
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
         let arg = yojson_of_prop yojson_of_string v_directory_id in
         ("directory_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_workspaces_directory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_workspaces_directory

[@@@deriving.end]

let self_service_permissions ?change_compute_type
    ?increase_volume_size ?rebuild_workspace ?restart_workspace
    ?switch_running_mode () : self_service_permissions =
  {
    change_compute_type;
    increase_volume_size;
    rebuild_workspace;
    restart_workspace;
    switch_running_mode;
  }

let workspace_access_properties ?device_type_android
    ?device_type_chromeos ?device_type_ios ?device_type_linux
    ?device_type_osx ?device_type_web ?device_type_windows
    ?device_type_zeroclient () : workspace_access_properties =
  {
    device_type_android;
    device_type_chromeos;
    device_type_ios;
    device_type_linux;
    device_type_osx;
    device_type_web;
    device_type_windows;
    device_type_zeroclient;
  }

let workspace_creation_properties ?custom_security_group_id
    ?default_ou ?enable_internet_access ?enable_maintenance_mode
    ?user_enabled_as_local_administrator () :
    workspace_creation_properties =
  {
    custom_security_group_id;
    default_ou;
    enable_internet_access;
    enable_maintenance_mode;
    user_enabled_as_local_administrator;
  }

let aws_workspaces_directory ?id ?ip_group_ids ?subnet_ids ?tags
    ?tags_all ?(self_service_permissions = [])
    ?(workspace_access_properties = [])
    ?(workspace_creation_properties = []) ~directory_id () :
    aws_workspaces_directory =
  {
    directory_id;
    id;
    ip_group_ids;
    subnet_ids;
    tags;
    tags_all;
    self_service_permissions;
    workspace_access_properties;
    workspace_creation_properties;
  }

type t = {
  tf_name : string;
  alias : string prop;
  customer_user_name : string prop;
  directory_id : string prop;
  directory_name : string prop;
  directory_type : string prop;
  dns_ip_addresses : string list prop;
  iam_role_id : string prop;
  id : string prop;
  ip_group_ids : string list prop;
  registration_code : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workspace_security_group_id : string prop;
}

let make ?id ?ip_group_ids ?subnet_ids ?tags ?tags_all
    ?(self_service_permissions = [])
    ?(workspace_access_properties = [])
    ?(workspace_creation_properties = []) ~directory_id __id =
  let __type = "aws_workspaces_directory" in
  let __attrs =
    ({
       tf_name = __id;
       alias = Prop.computed __type __id "alias";
       customer_user_name =
         Prop.computed __type __id "customer_user_name";
       directory_id = Prop.computed __type __id "directory_id";
       directory_name = Prop.computed __type __id "directory_name";
       directory_type = Prop.computed __type __id "directory_type";
       dns_ip_addresses =
         Prop.computed __type __id "dns_ip_addresses";
       iam_role_id = Prop.computed __type __id "iam_role_id";
       id = Prop.computed __type __id "id";
       ip_group_ids = Prop.computed __type __id "ip_group_ids";
       registration_code =
         Prop.computed __type __id "registration_code";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       workspace_security_group_id =
         Prop.computed __type __id "workspace_security_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_workspaces_directory
        (aws_workspaces_directory ?id ?ip_group_ids ?subnet_ids ?tags
           ?tags_all ~self_service_permissions
           ~workspace_access_properties
           ~workspace_creation_properties ~directory_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_group_ids ?subnet_ids ?tags ?tags_all
    ?(self_service_permissions = [])
    ?(workspace_access_properties = [])
    ?(workspace_creation_properties = []) ~directory_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_group_ids ?subnet_ids ?tags ?tags_all
      ~self_service_permissions ~workspace_access_properties
      ~workspace_creation_properties ~directory_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
