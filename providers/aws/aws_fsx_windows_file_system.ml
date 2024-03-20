(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type audit_log_configuration = {
  audit_log_destination : string prop option; [@option]
      (** audit_log_destination *)
  file_access_audit_log_level : string prop option; [@option]
      (** file_access_audit_log_level *)
  file_share_access_audit_log_level : string prop option; [@option]
      (** file_share_access_audit_log_level *)
}
[@@deriving yojson_of]
(** audit_log_configuration *)

type disk_iops_configuration = {
  iops : float prop option; [@option]  (** iops *)
  mode : string prop option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** disk_iops_configuration *)

type self_managed_active_directory = {
  dns_ips : string prop list;  (** dns_ips *)
  domain_name : string prop;  (** domain_name *)
  file_system_administrators_group : string prop option; [@option]
      (** file_system_administrators_group *)
  organizational_unit_distinguished_name : string prop option;
      [@option]
      (** organizational_unit_distinguished_name *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** self_managed_active_directory *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fsx_windows_file_system = {
  active_directory_id : string prop option; [@option]
      (** active_directory_id *)
  aliases : string prop list option; [@option]  (** aliases *)
  automatic_backup_retention_days : float prop option; [@option]
      (** automatic_backup_retention_days *)
  backup_id : string prop option; [@option]  (** backup_id *)
  copy_tags_to_backups : bool prop option; [@option]
      (** copy_tags_to_backups *)
  daily_automatic_backup_start_time : string prop option; [@option]
      (** daily_automatic_backup_start_time *)
  deployment_type : string prop option; [@option]
      (** deployment_type *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  preferred_subnet_id : string prop option; [@option]
      (** preferred_subnet_id *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  skip_final_backup : bool prop option; [@option]
      (** skip_final_backup *)
  storage_capacity : float prop option; [@option]
      (** storage_capacity *)
  storage_type : string prop option; [@option]  (** storage_type *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  throughput_capacity : float prop;  (** throughput_capacity *)
  weekly_maintenance_start_time : string prop option; [@option]
      (** weekly_maintenance_start_time *)
  audit_log_configuration : audit_log_configuration list;
  disk_iops_configuration : disk_iops_configuration list;
  self_managed_active_directory : self_managed_active_directory list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_windows_file_system *)

let audit_log_configuration ?audit_log_destination
    ?file_access_audit_log_level ?file_share_access_audit_log_level
    () : audit_log_configuration =
  {
    audit_log_destination;
    file_access_audit_log_level;
    file_share_access_audit_log_level;
  }

let disk_iops_configuration ?iops ?mode () : disk_iops_configuration
    =
  { iops; mode }

let self_managed_active_directory ?file_system_administrators_group
    ?organizational_unit_distinguished_name ~dns_ips ~domain_name
    ~password ~username () : self_managed_active_directory =
  {
    dns_ips;
    domain_name;
    file_system_administrators_group;
    organizational_unit_distinguished_name;
    password;
    username;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_windows_file_system ?active_directory_id ?aliases
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?deployment_type ?id
    ?kms_key_id ?preferred_subnet_id ?security_group_ids
    ?skip_final_backup ?storage_capacity ?storage_type ?tags
    ?tags_all ?weekly_maintenance_start_time ?timeouts ~subnet_ids
    ~throughput_capacity ~audit_log_configuration
    ~disk_iops_configuration ~self_managed_active_directory () :
    aws_fsx_windows_file_system =
  {
    active_directory_id;
    aliases;
    automatic_backup_retention_days;
    backup_id;
    copy_tags_to_backups;
    daily_automatic_backup_start_time;
    deployment_type;
    id;
    kms_key_id;
    preferred_subnet_id;
    security_group_ids;
    skip_final_backup;
    storage_capacity;
    storage_type;
    subnet_ids;
    tags;
    tags_all;
    throughput_capacity;
    weekly_maintenance_start_time;
    audit_log_configuration;
    disk_iops_configuration;
    self_managed_active_directory;
    timeouts;
  }

type t = {
  active_directory_id : string prop;
  aliases : string list prop;
  arn : string prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  daily_automatic_backup_start_time : string prop;
  deployment_type : string prop;
  dns_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_file_server_ip : string prop;
  preferred_subnet_id : string prop;
  remote_administration_endpoint : string prop;
  security_group_ids : string list prop;
  skip_final_backup : bool prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  throughput_capacity : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

let make ?active_directory_id ?aliases
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?deployment_type ?id
    ?kms_key_id ?preferred_subnet_id ?security_group_ids
    ?skip_final_backup ?storage_capacity ?storage_type ?tags
    ?tags_all ?weekly_maintenance_start_time ?timeouts ~subnet_ids
    ~throughput_capacity ~audit_log_configuration
    ~disk_iops_configuration ~self_managed_active_directory __id =
  let __type = "aws_fsx_windows_file_system" in
  let __attrs =
    ({
       active_directory_id =
         Prop.computed __type __id "active_directory_id";
       aliases = Prop.computed __type __id "aliases";
       arn = Prop.computed __type __id "arn";
       automatic_backup_retention_days =
         Prop.computed __type __id "automatic_backup_retention_days";
       backup_id = Prop.computed __type __id "backup_id";
       copy_tags_to_backups =
         Prop.computed __type __id "copy_tags_to_backups";
       daily_automatic_backup_start_time =
         Prop.computed __type __id
           "daily_automatic_backup_start_time";
       deployment_type = Prop.computed __type __id "deployment_type";
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
       remote_administration_endpoint =
         Prop.computed __type __id "remote_administration_endpoint";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       skip_final_backup =
         Prop.computed __type __id "skip_final_backup";
       storage_capacity =
         Prop.computed __type __id "storage_capacity";
       storage_type = Prop.computed __type __id "storage_type";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
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
        (aws_fsx_windows_file_system ?active_directory_id ?aliases
           ?automatic_backup_retention_days ?backup_id
           ?copy_tags_to_backups ?daily_automatic_backup_start_time
           ?deployment_type ?id ?kms_key_id ?preferred_subnet_id
           ?security_group_ids ?skip_final_backup ?storage_capacity
           ?storage_type ?tags ?tags_all
           ?weekly_maintenance_start_time ?timeouts ~subnet_ids
           ~throughput_capacity ~audit_log_configuration
           ~disk_iops_configuration ~self_managed_active_directory ());
    attrs = __attrs;
  }

let register ?tf_module ?active_directory_id ?aliases
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?deployment_type ?id
    ?kms_key_id ?preferred_subnet_id ?security_group_ids
    ?skip_final_backup ?storage_capacity ?storage_type ?tags
    ?tags_all ?weekly_maintenance_start_time ?timeouts ~subnet_ids
    ~throughput_capacity ~audit_log_configuration
    ~disk_iops_configuration ~self_managed_active_directory __id =
  let (r : _ Tf_core.resource) =
    make ?active_directory_id ?aliases
      ?automatic_backup_retention_days ?backup_id
      ?copy_tags_to_backups ?daily_automatic_backup_start_time
      ?deployment_type ?id ?kms_key_id ?preferred_subnet_id
      ?security_group_ids ?skip_final_backup ?storage_capacity
      ?storage_type ?tags ?tags_all ?weekly_maintenance_start_time
      ?timeouts ~subnet_ids ~throughput_capacity
      ~audit_log_configuration ~disk_iops_configuration
      ~self_managed_active_directory __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
