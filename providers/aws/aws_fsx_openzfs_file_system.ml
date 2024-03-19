(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type disk_iops_configuration = {
  iops : float prop option; [@option]  (** iops *)
  mode : string prop option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** disk_iops_configuration *)

type root_volume_configuration__nfs_exports__client_configurations = {
  clients : string prop;  (** clients *)
  options : string prop list;  (** options *)
}
[@@deriving yojson_of]
(** root_volume_configuration__nfs_exports__client_configurations *)

type root_volume_configuration__nfs_exports = {
  client_configurations :
    root_volume_configuration__nfs_exports__client_configurations
    list;
}
[@@deriving yojson_of]
(** root_volume_configuration__nfs_exports *)

type root_volume_configuration__user_and_group_quotas = {
  id : float prop;  (** id *)
  storage_capacity_quota_gib : float prop;
      (** storage_capacity_quota_gib *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** root_volume_configuration__user_and_group_quotas *)

type root_volume_configuration = {
  copy_tags_to_snapshots : bool prop option; [@option]
      (** copy_tags_to_snapshots *)
  data_compression_type : string prop option; [@option]
      (** data_compression_type *)
  read_only : bool prop option; [@option]  (** read_only *)
  record_size_kib : float prop option; [@option]
      (** record_size_kib *)
  nfs_exports : root_volume_configuration__nfs_exports list;
  user_and_group_quotas :
    root_volume_configuration__user_and_group_quotas list;
}
[@@deriving yojson_of]
(** root_volume_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fsx_openzfs_file_system = {
  automatic_backup_retention_days : float prop option; [@option]
      (** automatic_backup_retention_days *)
  backup_id : string prop option; [@option]  (** backup_id *)
  copy_tags_to_backups : bool prop option; [@option]
      (** copy_tags_to_backups *)
  copy_tags_to_volumes : bool prop option; [@option]
      (** copy_tags_to_volumes *)
  daily_automatic_backup_start_time : string prop option; [@option]
      (** daily_automatic_backup_start_time *)
  deployment_type : string prop;  (** deployment_type *)
  endpoint_ip_address_range : string prop option; [@option]
      (** endpoint_ip_address_range *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  preferred_subnet_id : string prop option; [@option]
      (** preferred_subnet_id *)
  route_table_ids : string prop list option; [@option]
      (** route_table_ids *)
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
  disk_iops_configuration : disk_iops_configuration list;
  root_volume_configuration : root_volume_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_file_system *)

let disk_iops_configuration ?iops ?mode () : disk_iops_configuration
    =
  { iops; mode }

let root_volume_configuration__nfs_exports__client_configurations
    ~clients ~options () :
    root_volume_configuration__nfs_exports__client_configurations =
  { clients; options }

let root_volume_configuration__nfs_exports ~client_configurations ()
    : root_volume_configuration__nfs_exports =
  { client_configurations }

let root_volume_configuration__user_and_group_quotas ~id
    ~storage_capacity_quota_gib ~type_ () :
    root_volume_configuration__user_and_group_quotas =
  { id; storage_capacity_quota_gib; type_ }

let root_volume_configuration ?copy_tags_to_snapshots
    ?data_compression_type ?read_only ?record_size_kib ~nfs_exports
    ~user_and_group_quotas () : root_volume_configuration =
  {
    copy_tags_to_snapshots;
    data_compression_type;
    read_only;
    record_size_kib;
    nfs_exports;
    user_and_group_quotas;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_openzfs_file_system ?automatic_backup_retention_days
    ?backup_id ?copy_tags_to_backups ?copy_tags_to_volumes
    ?daily_automatic_backup_start_time ?endpoint_ip_address_range ?id
    ?kms_key_id ?preferred_subnet_id ?route_table_ids
    ?security_group_ids ?skip_final_backup ?storage_capacity
    ?storage_type ?tags ?tags_all ?weekly_maintenance_start_time
    ?timeouts ~deployment_type ~subnet_ids ~throughput_capacity
    ~disk_iops_configuration ~root_volume_configuration () :
    aws_fsx_openzfs_file_system =
  {
    automatic_backup_retention_days;
    backup_id;
    copy_tags_to_backups;
    copy_tags_to_volumes;
    daily_automatic_backup_start_time;
    deployment_type;
    endpoint_ip_address_range;
    id;
    kms_key_id;
    preferred_subnet_id;
    route_table_ids;
    security_group_ids;
    skip_final_backup;
    storage_capacity;
    storage_type;
    subnet_ids;
    tags;
    tags_all;
    throughput_capacity;
    weekly_maintenance_start_time;
    disk_iops_configuration;
    root_volume_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  automatic_backup_retention_days : float prop;
  backup_id : string prop;
  copy_tags_to_backups : bool prop;
  copy_tags_to_volumes : bool prop;
  daily_automatic_backup_start_time : string prop;
  deployment_type : string prop;
  dns_name : string prop;
  endpoint_ip_address_range : string prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_subnet_id : string prop;
  root_volume_id : string prop;
  route_table_ids : string list prop;
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

let register ?tf_module ?automatic_backup_retention_days ?backup_id
    ?copy_tags_to_backups ?copy_tags_to_volumes
    ?daily_automatic_backup_start_time ?endpoint_ip_address_range ?id
    ?kms_key_id ?preferred_subnet_id ?route_table_ids
    ?security_group_ids ?skip_final_backup ?storage_capacity
    ?storage_type ?tags ?tags_all ?weekly_maintenance_start_time
    ?timeouts ~deployment_type ~subnet_ids ~throughput_capacity
    ~disk_iops_configuration ~root_volume_configuration __resource_id
    =
  let __resource_type = "aws_fsx_openzfs_file_system" in
  let __resource =
    aws_fsx_openzfs_file_system ?automatic_backup_retention_days
      ?backup_id ?copy_tags_to_backups ?copy_tags_to_volumes
      ?daily_automatic_backup_start_time ?endpoint_ip_address_range
      ?id ?kms_key_id ?preferred_subnet_id ?route_table_ids
      ?security_group_ids ?skip_final_backup ?storage_capacity
      ?storage_type ?tags ?tags_all ?weekly_maintenance_start_time
      ?timeouts ~deployment_type ~subnet_ids ~throughput_capacity
      ~disk_iops_configuration ~root_volume_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_openzfs_file_system __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       automatic_backup_retention_days =
         Prop.computed __resource_type __resource_id
           "automatic_backup_retention_days";
       backup_id =
         Prop.computed __resource_type __resource_id "backup_id";
       copy_tags_to_backups =
         Prop.computed __resource_type __resource_id
           "copy_tags_to_backups";
       copy_tags_to_volumes =
         Prop.computed __resource_type __resource_id
           "copy_tags_to_volumes";
       daily_automatic_backup_start_time =
         Prop.computed __resource_type __resource_id
           "daily_automatic_backup_start_time";
       deployment_type =
         Prop.computed __resource_type __resource_id
           "deployment_type";
       dns_name =
         Prop.computed __resource_type __resource_id "dns_name";
       endpoint_ip_address_range =
         Prop.computed __resource_type __resource_id
           "endpoint_ip_address_range";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       network_interface_ids =
         Prop.computed __resource_type __resource_id
           "network_interface_ids";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       preferred_subnet_id =
         Prop.computed __resource_type __resource_id
           "preferred_subnet_id";
       root_volume_id =
         Prop.computed __resource_type __resource_id "root_volume_id";
       route_table_ids =
         Prop.computed __resource_type __resource_id
           "route_table_ids";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       skip_final_backup =
         Prop.computed __resource_type __resource_id
           "skip_final_backup";
       storage_capacity =
         Prop.computed __resource_type __resource_id
           "storage_capacity";
       storage_type =
         Prop.computed __resource_type __resource_id "storage_type";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       throughput_capacity =
         Prop.computed __resource_type __resource_id
           "throughput_capacity";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
       weekly_maintenance_start_time =
         Prop.computed __resource_type __resource_id
           "weekly_maintenance_start_time";
     }
      : t)
  in
  __resource_attributes
