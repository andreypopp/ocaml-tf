(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_scaling_configuration = {
  auto_scaling_metric : string prop;
  max_node_count : float prop;
  metric_target : float prop;
  min_node_count : float prop;
  scale_in_cooldown_seconds : float prop;
  scale_out_cooldown_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_scaling_configuration) -> ()

let yojson_of_auto_scaling_configuration =
  (function
   | {
       auto_scaling_metric = v_auto_scaling_metric;
       max_node_count = v_max_node_count;
       metric_target = v_metric_target;
       min_node_count = v_min_node_count;
       scale_in_cooldown_seconds = v_scale_in_cooldown_seconds;
       scale_out_cooldown_seconds = v_scale_out_cooldown_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_scale_out_cooldown_seconds
         in
         ("scale_out_cooldown_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_scale_in_cooldown_seconds
         in
         ("scale_in_cooldown_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_node_count in
         ("min_node_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_metric_target in
         ("metric_target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_node_count in
         ("max_node_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_auto_scaling_metric
         in
         ("auto_scaling_metric", arg) :: bnds
       in
       `Assoc bnds
    : auto_scaling_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_scaling_configuration

[@@@deriving.end]

type cache_storage_configurations = {
  size : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_storage_configurations) -> ()

let yojson_of_cache_storage_configurations =
  (function
   | { size = v_size; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       `Assoc bnds
    : cache_storage_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_storage_configurations

[@@@deriving.end]

type capacity_configuration = {
  node_count : float prop;
  node_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : capacity_configuration) -> ()

let yojson_of_capacity_configuration =
  (function
   | { node_count = v_node_count; node_type = v_node_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_type in
         ("node_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
       in
       `Assoc bnds
    : capacity_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_capacity_configuration

[@@@deriving.end]

type code = {
  s3_bucket : string prop;
  s3_key : string prop;
  s3_object_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : code) -> ()

let yojson_of_code =
  (function
   | {
       s3_bucket = v_s3_bucket;
       s3_key = v_s3_key;
       s3_object_version = v_s3_object_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_object_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_object_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_key in
         ("s3_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_bucket in
         ("s3_bucket", arg) :: bnds
       in
       `Assoc bnds
    : code -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_code

[@@@deriving.end]

type database__cache_configurations = {
  cache_type : string prop;
  db_paths : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : database__cache_configurations) -> ()

let yojson_of_database__cache_configurations =
  (function
   | { cache_type = v_cache_type; db_paths = v_db_paths } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_db_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "db_paths", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cache_type in
         ("cache_type", arg) :: bnds
       in
       `Assoc bnds
    : database__cache_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_database__cache_configurations

[@@@deriving.end]

type database = {
  changeset_id : string prop option; [@option]
  database_name : string prop;
  dataview_name : string prop option; [@option]
  cache_configurations : database__cache_configurations list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : database) -> ()

let yojson_of_database =
  (function
   | {
       changeset_id = v_changeset_id;
       database_name = v_database_name;
       dataview_name = v_dataview_name;
       cache_configurations = v_cache_configurations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_database__cache_configurations
             v_cache_configurations
         in
         ("cache_configurations", arg) :: bnds
       in
       let bnds =
         match v_dataview_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataview_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_changeset_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "changeset_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_database

[@@@deriving.end]

type savedown_storage_configuration = {
  size : float prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  volume_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : savedown_storage_configuration) -> ()

let yojson_of_savedown_storage_configuration =
  (function
   | { size = v_size; type_ = v_type_; volume_name = v_volume_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : savedown_storage_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_savedown_storage_configuration

[@@@deriving.end]

type scaling_group_configuration = {
  cpu : float prop option; [@option]
  memory_limit : float prop option; [@option]
  memory_reservation : float prop;
  node_count : float prop;
  scaling_group_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scaling_group_configuration) -> ()

let yojson_of_scaling_group_configuration =
  (function
   | {
       cpu = v_cpu;
       memory_limit = v_memory_limit;
       memory_reservation = v_memory_reservation;
       node_count = v_node_count;
       scaling_group_name = v_scaling_group_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_scaling_group_name
         in
         ("scaling_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_memory_reservation
         in
         ("memory_reservation", arg) :: bnds
       in
       let bnds =
         match v_memory_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scaling_group_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scaling_group_configuration

[@@@deriving.end]

type tickerplant_log_configuration = {
  tickerplant_log_volumes : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tickerplant_log_configuration) -> ()

let yojson_of_tickerplant_log_configuration =
  (function
   | { tickerplant_log_volumes = v_tickerplant_log_volumes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_tickerplant_log_volumes
         in
         ("tickerplant_log_volumes", arg) :: bnds
       in
       `Assoc bnds
    : tickerplant_log_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tickerplant_log_configuration

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

type vpc_configuration = {
  ip_address_type : string prop;
  security_group_ids : string prop list;
  subnet_ids : string prop list;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_configuration) -> ()

let yojson_of_vpc_configuration =
  (function
   | {
       ip_address_type = v_ip_address_type;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_ids
         in
         ("security_group_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ip_address_type
         in
         ("ip_address_type", arg) :: bnds
       in
       `Assoc bnds
    : vpc_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_configuration

[@@@deriving.end]

type aws_finspace_kx_cluster = {
  availability_zone_id : string prop option; [@option]
  az_mode : string prop;
  command_line_arguments : (string * string prop) list option;
      [@option]
  description : string prop option; [@option]
  environment_id : string prop;
  execution_role : string prop option; [@option]
  id : string prop option; [@option]
  initialization_script : string prop option; [@option]
  name : string prop;
  release_label : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  auto_scaling_configuration : auto_scaling_configuration list;
  cache_storage_configurations : cache_storage_configurations list;
  capacity_configuration : capacity_configuration list;
  code : code list;
  database : database list;
  savedown_storage_configuration :
    savedown_storage_configuration list;
  scaling_group_configuration : scaling_group_configuration list;
  tickerplant_log_configuration : tickerplant_log_configuration list;
  timeouts : timeouts option;
  vpc_configuration : vpc_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_finspace_kx_cluster) -> ()

let yojson_of_aws_finspace_kx_cluster =
  (function
   | {
       availability_zone_id = v_availability_zone_id;
       az_mode = v_az_mode;
       command_line_arguments = v_command_line_arguments;
       description = v_description;
       environment_id = v_environment_id;
       execution_role = v_execution_role;
       id = v_id;
       initialization_script = v_initialization_script;
       name = v_name;
       release_label = v_release_label;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       auto_scaling_configuration = v_auto_scaling_configuration;
       cache_storage_configurations = v_cache_storage_configurations;
       capacity_configuration = v_capacity_configuration;
       code = v_code;
       database = v_database;
       savedown_storage_configuration =
         v_savedown_storage_configuration;
       scaling_group_configuration = v_scaling_group_configuration;
       tickerplant_log_configuration =
         v_tickerplant_log_configuration;
       timeouts = v_timeouts;
       vpc_configuration = v_vpc_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_configuration
             v_vpc_configuration
         in
         ("vpc_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_tickerplant_log_configuration
             v_tickerplant_log_configuration
         in
         ("tickerplant_log_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_scaling_group_configuration
             v_scaling_group_configuration
         in
         ("scaling_group_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_savedown_storage_configuration
             v_savedown_storage_configuration
         in
         ("savedown_storage_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_database v_database in
         ("database", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_code v_code in
         ("code", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_capacity_configuration
             v_capacity_configuration
         in
         ("capacity_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cache_storage_configurations
             v_cache_storage_configurations
         in
         ("cache_storage_configurations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auto_scaling_configuration
             v_auto_scaling_configuration
         in
         ("auto_scaling_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_release_label in
         ("release_label", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_initialization_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "initialization_script", arg in
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
         match v_execution_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_role", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_id
         in
         ("environment_id", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command_line_arguments with
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
             let bnd = "command_line_arguments", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_az_mode in
         ("az_mode", arg) :: bnds
       in
       let bnds =
         match v_availability_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_finspace_kx_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_finspace_kx_cluster

[@@@deriving.end]

let auto_scaling_configuration ~auto_scaling_metric ~max_node_count
    ~metric_target ~min_node_count ~scale_in_cooldown_seconds
    ~scale_out_cooldown_seconds () : auto_scaling_configuration =
  {
    auto_scaling_metric;
    max_node_count;
    metric_target;
    min_node_count;
    scale_in_cooldown_seconds;
    scale_out_cooldown_seconds;
  }

let cache_storage_configurations ~size ~type_ () :
    cache_storage_configurations =
  { size; type_ }

let capacity_configuration ~node_count ~node_type () :
    capacity_configuration =
  { node_count; node_type }

let code ?s3_object_version ~s3_bucket ~s3_key () : code =
  { s3_bucket; s3_key; s3_object_version }

let database__cache_configurations ?db_paths ~cache_type () :
    database__cache_configurations =
  { cache_type; db_paths }

let database ?changeset_id ?dataview_name
    ?(cache_configurations = []) ~database_name () : database =
  {
    changeset_id;
    database_name;
    dataview_name;
    cache_configurations;
  }

let savedown_storage_configuration ?size ?type_ ?volume_name () :
    savedown_storage_configuration =
  { size; type_; volume_name }

let scaling_group_configuration ?cpu ?memory_limit
    ~memory_reservation ~node_count ~scaling_group_name () :
    scaling_group_configuration =
  {
    cpu;
    memory_limit;
    memory_reservation;
    node_count;
    scaling_group_name;
  }

let tickerplant_log_configuration ~tickerplant_log_volumes () :
    tickerplant_log_configuration =
  { tickerplant_log_volumes }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_configuration ~ip_address_type ~security_group_ids
    ~subnet_ids ~vpc_id () : vpc_configuration =
  { ip_address_type; security_group_ids; subnet_ids; vpc_id }

let aws_finspace_kx_cluster ?availability_zone_id
    ?command_line_arguments ?description ?execution_role ?id
    ?initialization_script ?tags ?tags_all
    ?(auto_scaling_configuration = [])
    ?(cache_storage_configurations = [])
    ?(capacity_configuration = []) ?(code = []) ?(database = [])
    ?(savedown_storage_configuration = [])
    ?(scaling_group_configuration = [])
    ?(tickerplant_log_configuration = []) ?timeouts ~az_mode
    ~environment_id ~name ~release_label ~type_ ~vpc_configuration ()
    : aws_finspace_kx_cluster =
  {
    availability_zone_id;
    az_mode;
    command_line_arguments;
    description;
    environment_id;
    execution_role;
    id;
    initialization_script;
    name;
    release_label;
    tags;
    tags_all;
    type_;
    auto_scaling_configuration;
    cache_storage_configurations;
    capacity_configuration;
    code;
    database;
    savedown_storage_configuration;
    scaling_group_configuration;
    tickerplant_log_configuration;
    timeouts;
    vpc_configuration;
  }

type t = {
  arn : string prop;
  availability_zone_id : string prop;
  az_mode : string prop;
  command_line_arguments : (string * string) list prop;
  created_timestamp : string prop;
  description : string prop;
  environment_id : string prop;
  execution_role : string prop;
  id : string prop;
  initialization_script : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  release_label : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?availability_zone_id ?command_line_arguments ?description
    ?execution_role ?id ?initialization_script ?tags ?tags_all
    ?(auto_scaling_configuration = [])
    ?(cache_storage_configurations = [])
    ?(capacity_configuration = []) ?(code = []) ?(database = [])
    ?(savedown_storage_configuration = [])
    ?(scaling_group_configuration = [])
    ?(tickerplant_log_configuration = []) ?timeouts ~az_mode
    ~environment_id ~name ~release_label ~type_ ~vpc_configuration
    __id =
  let __type = "aws_finspace_kx_cluster" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone_id =
         Prop.computed __type __id "availability_zone_id";
       az_mode = Prop.computed __type __id "az_mode";
       command_line_arguments =
         Prop.computed __type __id "command_line_arguments";
       created_timestamp =
         Prop.computed __type __id "created_timestamp";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       execution_role = Prop.computed __type __id "execution_role";
       id = Prop.computed __type __id "id";
       initialization_script =
         Prop.computed __type __id "initialization_script";
       last_modified_timestamp =
         Prop.computed __type __id "last_modified_timestamp";
       name = Prop.computed __type __id "name";
       release_label = Prop.computed __type __id "release_label";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_finspace_kx_cluster
        (aws_finspace_kx_cluster ?availability_zone_id
           ?command_line_arguments ?description ?execution_role ?id
           ?initialization_script ?tags ?tags_all
           ~auto_scaling_configuration ~cache_storage_configurations
           ~capacity_configuration ~code ~database
           ~savedown_storage_configuration
           ~scaling_group_configuration
           ~tickerplant_log_configuration ?timeouts ~az_mode
           ~environment_id ~name ~release_label ~type_
           ~vpc_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone_id ?command_line_arguments
    ?description ?execution_role ?id ?initialization_script ?tags
    ?tags_all ?(auto_scaling_configuration = [])
    ?(cache_storage_configurations = [])
    ?(capacity_configuration = []) ?(code = []) ?(database = [])
    ?(savedown_storage_configuration = [])
    ?(scaling_group_configuration = [])
    ?(tickerplant_log_configuration = []) ?timeouts ~az_mode
    ~environment_id ~name ~release_label ~type_ ~vpc_configuration
    __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone_id ?command_line_arguments ?description
      ?execution_role ?id ?initialization_script ?tags ?tags_all
      ~auto_scaling_configuration ~cache_storage_configurations
      ~capacity_configuration ~code ~database
      ~savedown_storage_configuration ~scaling_group_configuration
      ~tickerplant_log_configuration ?timeouts ~az_mode
      ~environment_id ~name ~release_label ~type_ ~vpc_configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
