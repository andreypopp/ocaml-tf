(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_configuration = {
  destination : string prop option; [@option]  (** destination *)
  level : string prop option; [@option]  (** level *)
}
[@@deriving yojson_of]
(** log_configuration *)

type root_squash_configuration = {
  no_squash_nids : string prop list option; [@option]
      (** no_squash_nids *)
  root_squash : string prop option; [@option]  (** root_squash *)
}
[@@deriving yojson_of]
(** root_squash_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fsx_lustre_file_system = {
  auto_import_policy : string prop option; [@option]
      (** auto_import_policy *)
  automatic_backup_retention_days : float prop option; [@option]
      (** automatic_backup_retention_days *)
  backup_id : string prop option; [@option]  (** backup_id *)
  copy_tags_to_backups : bool prop option; [@option]
      (** copy_tags_to_backups *)
  daily_automatic_backup_start_time : string prop option; [@option]
      (** daily_automatic_backup_start_time *)
  data_compression_type : string prop option; [@option]
      (** data_compression_type *)
  deployment_type : string prop option; [@option]
      (** deployment_type *)
  drive_cache_type : string prop option; [@option]
      (** drive_cache_type *)
  export_path : string prop option; [@option]  (** export_path *)
  file_system_type_version : string prop option; [@option]
      (** file_system_type_version *)
  id : string prop option; [@option]  (** id *)
  import_path : string prop option; [@option]  (** import_path *)
  imported_file_chunk_size : float prop option; [@option]
      (** imported_file_chunk_size *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  per_unit_storage_throughput : float prop option; [@option]
      (** per_unit_storage_throughput *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  storage_capacity : float prop option; [@option]
      (** storage_capacity *)
  storage_type : string prop option; [@option]  (** storage_type *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  weekly_maintenance_start_time : string prop option; [@option]
      (** weekly_maintenance_start_time *)
  log_configuration : log_configuration list;
  root_squash_configuration : root_squash_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_lustre_file_system *)

let log_configuration ?destination ?level () : log_configuration =
  { destination; level }

let root_squash_configuration ?no_squash_nids ?root_squash () :
    root_squash_configuration =
  { no_squash_nids; root_squash }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_lustre_file_system ?auto_import_policy
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?data_compression_type
    ?deployment_type ?drive_cache_type ?export_path
    ?file_system_type_version ?id ?import_path
    ?imported_file_chunk_size ?kms_key_id
    ?per_unit_storage_throughput ?security_group_ids
    ?storage_capacity ?storage_type ?tags ?tags_all
    ?weekly_maintenance_start_time ?timeouts ~subnet_ids
    ~log_configuration ~root_squash_configuration () :
    aws_fsx_lustre_file_system =
  {
    auto_import_policy;
    automatic_backup_retention_days;
    backup_id;
    copy_tags_to_backups;
    daily_automatic_backup_start_time;
    data_compression_type;
    deployment_type;
    drive_cache_type;
    export_path;
    file_system_type_version;
    id;
    import_path;
    imported_file_chunk_size;
    kms_key_id;
    per_unit_storage_throughput;
    security_group_ids;
    storage_capacity;
    storage_type;
    subnet_ids;
    tags;
    tags_all;
    weekly_maintenance_start_time;
    log_configuration;
    root_squash_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  auto_import_policy : string prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  daily_automatic_backup_start_time : string prop;
  data_compression_type : string prop;
  deployment_type : string prop;
  dns_name : string prop;
  drive_cache_type : string prop;
  export_path : string prop;
  file_system_type_version : string prop;
  id : string prop;
  import_path : string prop;
  imported_file_chunk_size : float prop;
  kms_key_id : string prop;
  mount_name : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  per_unit_storage_throughput : float prop;
  security_group_ids : string list prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

let make ?auto_import_policy ?automatic_backup_retention_days
    ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?data_compression_type
    ?deployment_type ?drive_cache_type ?export_path
    ?file_system_type_version ?id ?import_path
    ?imported_file_chunk_size ?kms_key_id
    ?per_unit_storage_throughput ?security_group_ids
    ?storage_capacity ?storage_type ?tags ?tags_all
    ?weekly_maintenance_start_time ?timeouts ~subnet_ids
    ~log_configuration ~root_squash_configuration __id =
  let __type = "aws_fsx_lustre_file_system" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auto_import_policy =
         Prop.computed __type __id "auto_import_policy";
       automatic_backup_retention_days =
         Prop.computed __type __id "automatic_backup_retention_days";
       backup_id = Prop.computed __type __id "backup_id";
       copy_tags_to_backups =
         Prop.computed __type __id "copy_tags_to_backups";
       daily_automatic_backup_start_time =
         Prop.computed __type __id
           "daily_automatic_backup_start_time";
       data_compression_type =
         Prop.computed __type __id "data_compression_type";
       deployment_type = Prop.computed __type __id "deployment_type";
       dns_name = Prop.computed __type __id "dns_name";
       drive_cache_type =
         Prop.computed __type __id "drive_cache_type";
       export_path = Prop.computed __type __id "export_path";
       file_system_type_version =
         Prop.computed __type __id "file_system_type_version";
       id = Prop.computed __type __id "id";
       import_path = Prop.computed __type __id "import_path";
       imported_file_chunk_size =
         Prop.computed __type __id "imported_file_chunk_size";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       mount_name = Prop.computed __type __id "mount_name";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       per_unit_storage_throughput =
         Prop.computed __type __id "per_unit_storage_throughput";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       storage_capacity =
         Prop.computed __type __id "storage_capacity";
       storage_type = Prop.computed __type __id "storage_type";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
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
      yojson_of_aws_fsx_lustre_file_system
        (aws_fsx_lustre_file_system ?auto_import_policy
           ?automatic_backup_retention_days ?backup_id
           ?copy_tags_to_backups ?daily_automatic_backup_start_time
           ?data_compression_type ?deployment_type ?drive_cache_type
           ?export_path ?file_system_type_version ?id ?import_path
           ?imported_file_chunk_size ?kms_key_id
           ?per_unit_storage_throughput ?security_group_ids
           ?storage_capacity ?storage_type ?tags ?tags_all
           ?weekly_maintenance_start_time ?timeouts ~subnet_ids
           ~log_configuration ~root_squash_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_import_policy
    ?automatic_backup_retention_days ?backup_id ?copy_tags_to_backups
    ?daily_automatic_backup_start_time ?data_compression_type
    ?deployment_type ?drive_cache_type ?export_path
    ?file_system_type_version ?id ?import_path
    ?imported_file_chunk_size ?kms_key_id
    ?per_unit_storage_throughput ?security_group_ids
    ?storage_capacity ?storage_type ?tags ?tags_all
    ?weekly_maintenance_start_time ?timeouts ~subnet_ids
    ~log_configuration ~root_squash_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?auto_import_policy ?automatic_backup_retention_days
      ?backup_id ?copy_tags_to_backups
      ?daily_automatic_backup_start_time ?data_compression_type
      ?deployment_type ?drive_cache_type ?export_path
      ?file_system_type_version ?id ?import_path
      ?imported_file_chunk_size ?kms_key_id
      ?per_unit_storage_throughput ?security_group_ids
      ?storage_capacity ?storage_type ?tags ?tags_all
      ?weekly_maintenance_start_time ?timeouts ~subnet_ids
      ~log_configuration ~root_squash_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
