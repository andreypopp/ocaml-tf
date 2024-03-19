(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type disk_iops_configuration = {
  iops : float prop option; [@option]  (** iops *)
  mode : string prop option; [@option]  (** mode *)
}
[@@deriving yojson_of]
(** disk_iops_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type endpoints__management = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type endpoints__intercluster = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type endpoints = {
  intercluster : endpoints__intercluster list;  (** intercluster *)
  management : endpoints__management list;  (** management *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_file_system = {
  automatic_backup_retention_days : float prop option; [@option]
      (** automatic_backup_retention_days *)
  daily_automatic_backup_start_time : string prop option; [@option]
      (** daily_automatic_backup_start_time *)
  deployment_type : string prop;  (** deployment_type *)
  endpoint_ip_address_range : string prop option; [@option]
      (** endpoint_ip_address_range *)
  fsx_admin_password : string prop option; [@option]
      (** fsx_admin_password *)
  ha_pairs : float prop option; [@option]  (** ha_pairs *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  preferred_subnet_id : string prop;  (** preferred_subnet_id *)
  route_table_ids : string prop list option; [@option]
      (** route_table_ids *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  storage_capacity : float prop option; [@option]
      (** storage_capacity *)
  storage_type : string prop option; [@option]  (** storage_type *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  throughput_capacity : float prop option; [@option]
      (** throughput_capacity *)
  throughput_capacity_per_ha_pair : float prop option; [@option]
      (** throughput_capacity_per_ha_pair *)
  weekly_maintenance_start_time : string prop option; [@option]
      (** weekly_maintenance_start_time *)
  disk_iops_configuration : disk_iops_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_file_system *)

let disk_iops_configuration ?iops ?mode () : disk_iops_configuration
    =
  { iops; mode }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_ontap_file_system ?automatic_backup_retention_days
    ?daily_automatic_backup_start_time ?endpoint_ip_address_range
    ?fsx_admin_password ?ha_pairs ?id ?kms_key_id ?route_table_ids
    ?security_group_ids ?storage_capacity ?storage_type ?tags
    ?tags_all ?throughput_capacity ?throughput_capacity_per_ha_pair
    ?weekly_maintenance_start_time ?timeouts ~deployment_type
    ~preferred_subnet_id ~subnet_ids ~disk_iops_configuration () :
    aws_fsx_ontap_file_system =
  {
    automatic_backup_retention_days;
    daily_automatic_backup_start_time;
    deployment_type;
    endpoint_ip_address_range;
    fsx_admin_password;
    ha_pairs;
    id;
    kms_key_id;
    preferred_subnet_id;
    route_table_ids;
    security_group_ids;
    storage_capacity;
    storage_type;
    subnet_ids;
    tags;
    tags_all;
    throughput_capacity;
    throughput_capacity_per_ha_pair;
    weekly_maintenance_start_time;
    disk_iops_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  automatic_backup_retention_days : float prop;
  daily_automatic_backup_start_time : string prop;
  deployment_type : string prop;
  dns_name : string prop;
  endpoint_ip_address_range : string prop;
  endpoints : endpoints list prop;
  fsx_admin_password : string prop;
  ha_pairs : float prop;
  id : string prop;
  kms_key_id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preferred_subnet_id : string prop;
  route_table_ids : string list prop;
  security_group_ids : string list prop;
  storage_capacity : float prop;
  storage_type : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  throughput_capacity : float prop;
  throughput_capacity_per_ha_pair : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

let register ?tf_module ?automatic_backup_retention_days
    ?daily_automatic_backup_start_time ?endpoint_ip_address_range
    ?fsx_admin_password ?ha_pairs ?id ?kms_key_id ?route_table_ids
    ?security_group_ids ?storage_capacity ?storage_type ?tags
    ?tags_all ?throughput_capacity ?throughput_capacity_per_ha_pair
    ?weekly_maintenance_start_time ?timeouts ~deployment_type
    ~preferred_subnet_id ~subnet_ids ~disk_iops_configuration
    __resource_id =
  let __resource_type = "aws_fsx_ontap_file_system" in
  let __resource =
    aws_fsx_ontap_file_system ?automatic_backup_retention_days
      ?daily_automatic_backup_start_time ?endpoint_ip_address_range
      ?fsx_admin_password ?ha_pairs ?id ?kms_key_id ?route_table_ids
      ?security_group_ids ?storage_capacity ?storage_type ?tags
      ?tags_all ?throughput_capacity ?throughput_capacity_per_ha_pair
      ?weekly_maintenance_start_time ?timeouts ~deployment_type
      ~preferred_subnet_id ~subnet_ids ~disk_iops_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_ontap_file_system __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       automatic_backup_retention_days =
         Prop.computed __resource_type __resource_id
           "automatic_backup_retention_days";
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
       endpoints =
         Prop.computed __resource_type __resource_id "endpoints";
       fsx_admin_password =
         Prop.computed __resource_type __resource_id
           "fsx_admin_password";
       ha_pairs =
         Prop.computed __resource_type __resource_id "ha_pairs";
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
       route_table_ids =
         Prop.computed __resource_type __resource_id
           "route_table_ids";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
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
       throughput_capacity_per_ha_pair =
         Prop.computed __resource_type __resource_id
           "throughput_capacity_per_ha_pair";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
       weekly_maintenance_start_time =
         Prop.computed __resource_type __resource_id
           "weekly_maintenance_start_time";
     }
      : t)
  in
  __resource_attributes
