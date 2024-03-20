(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type audit_log_configuration = {
  audit_log_destination : string prop;
  file_access_audit_log_level : string prop;
  file_share_access_audit_log_level : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : audit_log_configuration) -> ()

let yojson_of_audit_log_configuration =
  (function
   | {
       audit_log_destination = v_audit_log_destination;
       file_access_audit_log_level = v_file_access_audit_log_level;
       file_share_access_audit_log_level =
         v_file_share_access_audit_log_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_file_share_access_audit_log_level
         in
         ("file_share_access_audit_log_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_file_access_audit_log_level
         in
         ("file_access_audit_log_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_audit_log_destination
         in
         ("audit_log_destination", arg) :: bnds
       in
       `Assoc bnds
    : audit_log_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_audit_log_configuration

[@@@deriving.end]

type disk_iops_configuration = {
  iops : float prop;
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk_iops_configuration) -> ()

let yojson_of_disk_iops_configuration =
  (function
   | { iops = v_iops; mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_iops in
         ("iops", arg) :: bnds
       in
       `Assoc bnds
    : disk_iops_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk_iops_configuration

[@@@deriving.end]

type aws_fsx_windows_file_system = {
  id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_windows_file_system) -> ()

let yojson_of_aws_fsx_windows_file_system =
  (function
   | { id = v_id; tags = v_tags } ->
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_fsx_windows_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_windows_file_system

[@@@deriving.end]

let aws_fsx_windows_file_system ?tags ~id () :
    aws_fsx_windows_file_system =
  { id; tags }

type t = {
  active_directory_id : string prop;
  aliases : string list prop;
  arn : string prop;
  audit_log_configuration : audit_log_configuration list prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  daily_automatic_backup_start_time : string prop;
  deployment_type : string prop;
  disk_iops_configuration : disk_iops_configuration list prop;
  dns_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_file_server_ip : string prop;
  preferred_subnet_id : string prop;
  security_group_ids : string list prop;
  skip_final_backup : bool prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  throughput_capacity : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

let make ?tags ~id __id =
  let __type = "aws_fsx_windows_file_system" in
  let __attrs =
    ({
       active_directory_id =
         Prop.computed __type __id "active_directory_id";
       aliases = Prop.computed __type __id "aliases";
       arn = Prop.computed __type __id "arn";
       audit_log_configuration =
         Prop.computed __type __id "audit_log_configuration";
       automatic_backup_retention_days =
         Prop.computed __type __id "automatic_backup_retention_days";
       backup_id = Prop.computed __type __id "backup_id";
       copy_tags_to_backups =
         Prop.computed __type __id "copy_tags_to_backups";
       daily_automatic_backup_start_time =
         Prop.computed __type __id
           "daily_automatic_backup_start_time";
       deployment_type = Prop.computed __type __id "deployment_type";
       disk_iops_configuration =
         Prop.computed __type __id "disk_iops_configuration";
       dns_name = Prop.computed __type __id "dns_name";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       preferred_file_server_ip =
         Prop.computed __type __id "preferred_file_server_ip";
       preferred_subnet_id =
         Prop.computed __type __id "preferred_subnet_id";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       skip_final_backup =
         Prop.computed __type __id "skip_final_backup";
       storage_capacity =
         Prop.computed __type __id "storage_capacity";
       storage_type = Prop.computed __type __id "storage_type";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       throughput_capacity =
         Prop.computed __type __id "throughput_capacity";
       vpc_id = Prop.computed __type __id "vpc_id";
       weekly_maintenance_start_time =
         Prop.computed __type __id "weekly_maintenance_start_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_windows_file_system
        (aws_fsx_windows_file_system ?tags ~id ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ~id __id =
  let (r : _ Tf_core.resource) = make ?tags ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
