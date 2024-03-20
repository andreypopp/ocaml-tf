(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type self_service_permissions = {
  change_compute_type : bool prop;
  increase_volume_size : bool prop;
  rebuild_workspace : bool prop;
  restart_workspace : bool prop;
  switch_running_mode : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool v_switch_running_mode
         in
         ("switch_running_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_restart_workspace
         in
         ("restart_workspace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_rebuild_workspace
         in
         ("rebuild_workspace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_increase_volume_size
         in
         ("increase_volume_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_change_compute_type
         in
         ("change_compute_type", arg) :: bnds
       in
       `Assoc bnds
    : self_service_permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_self_service_permissions

[@@@deriving.end]

type workspace_access_properties = {
  device_type_android : string prop;
  device_type_chromeos : string prop;
  device_type_ios : string prop;
  device_type_linux : string prop;
  device_type_osx : string prop;
  device_type_web : string prop;
  device_type_windows : string prop;
  device_type_zeroclient : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_device_type_zeroclient
         in
         ("device_type_zeroclient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_type_windows
         in
         ("device_type_windows", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_type_web
         in
         ("device_type_web", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_type_osx
         in
         ("device_type_osx", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_type_linux
         in
         ("device_type_linux", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_type_ios
         in
         ("device_type_ios", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_type_chromeos
         in
         ("device_type_chromeos", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_type_android
         in
         ("device_type_android", arg) :: bnds
       in
       `Assoc bnds
    : workspace_access_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workspace_access_properties

[@@@deriving.end]

type workspace_creation_properties = {
  custom_security_group_id : string prop;
  default_ou : string prop;
  enable_internet_access : bool prop;
  enable_maintenance_mode : bool prop;
  user_enabled_as_local_administrator : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool
             v_user_enabled_as_local_administrator
         in
         ("user_enabled_as_local_administrator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_maintenance_mode
         in
         ("enable_maintenance_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_internet_access
         in
         ("enable_internet_access", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_default_ou in
         ("default_ou", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_custom_security_group_id
         in
         ("custom_security_group_id", arg) :: bnds
       in
       `Assoc bnds
    : workspace_creation_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workspace_creation_properties

[@@@deriving.end]

type aws_workspaces_directory = {
  directory_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_workspaces_directory) -> ()

let yojson_of_aws_workspaces_directory =
  (function
   | { directory_id = v_directory_id; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

let aws_workspaces_directory ?id ?tags ~directory_id () :
    aws_workspaces_directory =
  { directory_id; id; tags }

type t = {
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
  self_service_permissions : self_service_permissions list prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  workspace_access_properties :
    workspace_access_properties list prop;
  workspace_creation_properties :
    workspace_creation_properties list prop;
  workspace_security_group_id : string prop;
}

let make ?id ?tags ~directory_id __id =
  let __type = "aws_workspaces_directory" in
  let __attrs =
    ({
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
       self_service_permissions =
         Prop.computed __type __id "self_service_permissions";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       workspace_access_properties =
         Prop.computed __type __id "workspace_access_properties";
       workspace_creation_properties =
         Prop.computed __type __id "workspace_creation_properties";
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
        (aws_workspaces_directory ?id ?tags ~directory_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~directory_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~directory_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
