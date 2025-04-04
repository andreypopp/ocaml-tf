(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type disk_iops_configuration = {
  iops : float prop option; [@option]
  mode : string prop option; [@option]
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
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : disk_iops_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk_iops_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type endpoints__management = {
  dns_name : string prop;
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints__management) -> ()

let yojson_of_endpoints__management =
  (function
   | { dns_name = v_dns_name; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_addresses
           in
           let bnd = "ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       `Assoc bnds
    : endpoints__management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints__management

[@@@deriving.end]

type endpoints__intercluster = {
  dns_name : string prop;
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints__intercluster) -> ()

let yojson_of_endpoints__intercluster =
  (function
   | { dns_name = v_dns_name; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ip_addresses
           in
           let bnd = "ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       `Assoc bnds
    : endpoints__intercluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints__intercluster

[@@@deriving.end]

type endpoints = {
  intercluster : endpoints__intercluster list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  management : endpoints__management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints) -> ()

let yojson_of_endpoints =
  (function
   | { intercluster = v_intercluster; management = v_management } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_management then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoints__management)
               v_management
           in
           let bnd = "management", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_intercluster then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoints__intercluster)
               v_intercluster
           in
           let bnd = "intercluster", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints

[@@@deriving.end]

type aws_fsx_ontap_file_system = {
  automatic_backup_retention_days : float prop option; [@option]
  daily_automatic_backup_start_time : string prop option; [@option]
  deployment_type : string prop;
  endpoint_ip_address_range : string prop option; [@option]
  fsx_admin_password : string prop option; [@option]
  ha_pairs : float prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  preferred_subnet_id : string prop;
  route_table_ids : string prop list option; [@option]
  security_group_ids : string prop list option; [@option]
  storage_capacity : float prop;
  storage_type : string prop option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  throughput_capacity : float prop option; [@option]
  throughput_capacity_per_ha_pair : float prop option; [@option]
  weekly_maintenance_start_time : string prop option; [@option]
  disk_iops_configuration : disk_iops_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_ontap_file_system) -> ()

let yojson_of_aws_fsx_ontap_file_system =
  (function
   | {
       automatic_backup_retention_days =
         v_automatic_backup_retention_days;
       daily_automatic_backup_start_time =
         v_daily_automatic_backup_start_time;
       deployment_type = v_deployment_type;
       endpoint_ip_address_range = v_endpoint_ip_address_range;
       fsx_admin_password = v_fsx_admin_password;
       ha_pairs = v_ha_pairs;
       id = v_id;
       kms_key_id = v_kms_key_id;
       preferred_subnet_id = v_preferred_subnet_id;
       route_table_ids = v_route_table_ids;
       security_group_ids = v_security_group_ids;
       storage_capacity = v_storage_capacity;
       storage_type = v_storage_type;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       throughput_capacity = v_throughput_capacity;
       throughput_capacity_per_ha_pair =
         v_throughput_capacity_per_ha_pair;
       weekly_maintenance_start_time =
         v_weekly_maintenance_start_time;
       disk_iops_configuration = v_disk_iops_configuration;
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
         if Stdlib.( = ) [] v_disk_iops_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_disk_iops_configuration)
               v_disk_iops_configuration
           in
           let bnd = "disk_iops_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_weekly_maintenance_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "weekly_maintenance_start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throughput_capacity_per_ha_pair with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput_capacity_per_ha_pair", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throughput_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_storage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_storage_capacity
         in
         ("storage_capacity", arg) :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route_table_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "route_table_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_preferred_subnet_id
         in
         ("preferred_subnet_id", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
         match v_ha_pairs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ha_pairs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fsx_admin_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fsx_admin_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_ip_address_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_ip_address_range", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_deployment_type
         in
         ("deployment_type", arg) :: bnds
       in
       let bnds =
         match v_daily_automatic_backup_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "daily_automatic_backup_start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_backup_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "automatic_backup_retention_days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_fsx_ontap_file_system -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_ontap_file_system

[@@@deriving.end]

let disk_iops_configuration ?iops ?mode () : disk_iops_configuration
    =
  { iops; mode }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_ontap_file_system ?automatic_backup_retention_days
    ?daily_automatic_backup_start_time ?endpoint_ip_address_range
    ?fsx_admin_password ?ha_pairs ?id ?kms_key_id ?route_table_ids
    ?security_group_ids ?storage_type ?tags ?tags_all
    ?throughput_capacity ?throughput_capacity_per_ha_pair
    ?weekly_maintenance_start_time ?(disk_iops_configuration = [])
    ?timeouts ~deployment_type ~preferred_subnet_id ~storage_capacity
    ~subnet_ids () : aws_fsx_ontap_file_system =
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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  throughput_capacity : float prop;
  throughput_capacity_per_ha_pair : float prop;
  vpc_id : string prop;
  weekly_maintenance_start_time : string prop;
}

let make ?automatic_backup_retention_days
    ?daily_automatic_backup_start_time ?endpoint_ip_address_range
    ?fsx_admin_password ?ha_pairs ?id ?kms_key_id ?route_table_ids
    ?security_group_ids ?storage_type ?tags ?tags_all
    ?throughput_capacity ?throughput_capacity_per_ha_pair
    ?weekly_maintenance_start_time ?(disk_iops_configuration = [])
    ?timeouts ~deployment_type ~preferred_subnet_id ~storage_capacity
    ~subnet_ids __id =
  let __type = "aws_fsx_ontap_file_system" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       automatic_backup_retention_days =
         Prop.computed __type __id "automatic_backup_retention_days";
       daily_automatic_backup_start_time =
         Prop.computed __type __id
           "daily_automatic_backup_start_time";
       deployment_type = Prop.computed __type __id "deployment_type";
       dns_name = Prop.computed __type __id "dns_name";
       endpoint_ip_address_range =
         Prop.computed __type __id "endpoint_ip_address_range";
       endpoints = Prop.computed __type __id "endpoints";
       fsx_admin_password =
         Prop.computed __type __id "fsx_admin_password";
       ha_pairs = Prop.computed __type __id "ha_pairs";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       owner_id = Prop.computed __type __id "owner_id";
       preferred_subnet_id =
         Prop.computed __type __id "preferred_subnet_id";
       route_table_ids = Prop.computed __type __id "route_table_ids";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       storage_capacity =
         Prop.computed __type __id "storage_capacity";
       storage_type = Prop.computed __type __id "storage_type";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       throughput_capacity =
         Prop.computed __type __id "throughput_capacity";
       throughput_capacity_per_ha_pair =
         Prop.computed __type __id "throughput_capacity_per_ha_pair";
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
      yojson_of_aws_fsx_ontap_file_system
        (aws_fsx_ontap_file_system ?automatic_backup_retention_days
           ?daily_automatic_backup_start_time
           ?endpoint_ip_address_range ?fsx_admin_password ?ha_pairs
           ?id ?kms_key_id ?route_table_ids ?security_group_ids
           ?storage_type ?tags ?tags_all ?throughput_capacity
           ?throughput_capacity_per_ha_pair
           ?weekly_maintenance_start_time ~disk_iops_configuration
           ?timeouts ~deployment_type ~preferred_subnet_id
           ~storage_capacity ~subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_backup_retention_days
    ?daily_automatic_backup_start_time ?endpoint_ip_address_range
    ?fsx_admin_password ?ha_pairs ?id ?kms_key_id ?route_table_ids
    ?security_group_ids ?storage_type ?tags ?tags_all
    ?throughput_capacity ?throughput_capacity_per_ha_pair
    ?weekly_maintenance_start_time ?(disk_iops_configuration = [])
    ?timeouts ~deployment_type ~preferred_subnet_id ~storage_capacity
    ~subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?automatic_backup_retention_days
      ?daily_automatic_backup_start_time ?endpoint_ip_address_range
      ?fsx_admin_password ?ha_pairs ?id ?kms_key_id ?route_table_ids
      ?security_group_ids ?storage_type ?tags ?tags_all
      ?throughput_capacity ?throughput_capacity_per_ha_pair
      ?weekly_maintenance_start_time ~disk_iops_configuration
      ?timeouts ~deployment_type ~preferred_subnet_id
      ~storage_capacity ~subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
