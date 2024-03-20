(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type self_service_permissions = {
  change_compute_type : bool prop option; [@option]
      (** change_compute_type *)
  increase_volume_size : bool prop option; [@option]
      (** increase_volume_size *)
  rebuild_workspace : bool prop option; [@option]
      (** rebuild_workspace *)
  restart_workspace : bool prop option; [@option]
      (** restart_workspace *)
  switch_running_mode : bool prop option; [@option]
      (** switch_running_mode *)
}
[@@deriving yojson_of]
(** self_service_permissions *)

type workspace_access_properties = {
  device_type_android : string prop option; [@option]
      (** device_type_android *)
  device_type_chromeos : string prop option; [@option]
      (** device_type_chromeos *)
  device_type_ios : string prop option; [@option]
      (** device_type_ios *)
  device_type_linux : string prop option; [@option]
      (** device_type_linux *)
  device_type_osx : string prop option; [@option]
      (** device_type_osx *)
  device_type_web : string prop option; [@option]
      (** device_type_web *)
  device_type_windows : string prop option; [@option]
      (** device_type_windows *)
  device_type_zeroclient : string prop option; [@option]
      (** device_type_zeroclient *)
}
[@@deriving yojson_of]
(** workspace_access_properties *)

type workspace_creation_properties = {
  custom_security_group_id : string prop option; [@option]
      (** custom_security_group_id *)
  default_ou : string prop option; [@option]  (** default_ou *)
  enable_internet_access : bool prop option; [@option]
      (** enable_internet_access *)
  enable_maintenance_mode : bool prop option; [@option]
      (** enable_maintenance_mode *)
  user_enabled_as_local_administrator : bool prop option; [@option]
      (** user_enabled_as_local_administrator *)
}
[@@deriving yojson_of]
(** workspace_creation_properties *)

type aws_workspaces_directory = {
  directory_id : string prop;  (** directory_id *)
  id : string prop option; [@option]  (** id *)
  ip_group_ids : string prop list option; [@option]
      (** ip_group_ids *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  self_service_permissions : self_service_permissions list;
  workspace_access_properties : workspace_access_properties list;
  workspace_creation_properties : workspace_creation_properties list;
}
[@@deriving yojson_of]
(** aws_workspaces_directory *)

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
    ?tags_all ~directory_id ~self_service_permissions
    ~workspace_access_properties ~workspace_creation_properties () :
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

let make ?id ?ip_group_ids ?subnet_ids ?tags ?tags_all ~directory_id
    ~self_service_permissions ~workspace_access_properties
    ~workspace_creation_properties __id =
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
           ?tags_all ~directory_id ~self_service_permissions
           ~workspace_access_properties
           ~workspace_creation_properties ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_group_ids ?subnet_ids ?tags ?tags_all
    ~directory_id ~self_service_permissions
    ~workspace_access_properties ~workspace_creation_properties __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_group_ids ?subnet_ids ?tags ?tags_all ~directory_id
      ~self_service_permissions ~workspace_access_properties
      ~workspace_creation_properties __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
