(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscaling = {
  max_node_count : float prop;
  min_node_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling) -> ()

let yojson_of_autoscaling =
  (function
   | {
       max_node_count = v_max_node_count;
       min_node_count = v_min_node_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_node_count in
         ("min_node_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_node_count in
         ("max_node_count", arg) :: bnds
       in
       `Assoc bnds
    : autoscaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling

[@@@deriving.end]

type config__autoscaling_metrics_collection = {
  granularity : string prop;
  metrics : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__autoscaling_metrics_collection) -> ()

let yojson_of_config__autoscaling_metrics_collection =
  (function
   | { granularity = v_granularity; metrics = v_metrics } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_metrics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "metrics", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_granularity in
         ("granularity", arg) :: bnds
       in
       `Assoc bnds
    : config__autoscaling_metrics_collection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__autoscaling_metrics_collection

[@@@deriving.end]

type config__config_encryption = { kms_key_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : config__config_encryption) -> ()

let yojson_of_config__config_encryption =
  (function
   | { kms_key_arn = v_kms_key_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_arn in
         ("kms_key_arn", arg) :: bnds
       in
       `Assoc bnds
    : config__config_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__config_encryption

[@@@deriving.end]

type config__proxy_config = {
  secret_arn : string prop;
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__proxy_config) -> ()

let yojson_of_config__proxy_config =
  (function
   | { secret_arn = v_secret_arn; secret_version = v_secret_version }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_version
         in
         ("secret_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_arn in
         ("secret_arn", arg) :: bnds
       in
       `Assoc bnds
    : config__proxy_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__proxy_config

[@@@deriving.end]

type config__root_volume = {
  iops : float prop option; [@option]
  kms_key_arn : string prop option; [@option]
  size_gib : float prop option; [@option]
  throughput : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__root_volume) -> ()

let yojson_of_config__root_volume =
  (function
   | {
       iops = v_iops;
       kms_key_arn = v_kms_key_arn;
       size_gib = v_size_gib;
       throughput = v_throughput;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size_gib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size_gib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
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
    : config__root_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__root_volume

[@@@deriving.end]

type config__ssh_config = { ec2_key_pair : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : config__ssh_config) -> ()

let yojson_of_config__ssh_config =
  (function
   | { ec2_key_pair = v_ec2_key_pair } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ec2_key_pair in
         ("ec2_key_pair", arg) :: bnds
       in
       `Assoc bnds
    : config__ssh_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__ssh_config

[@@@deriving.end]

type config__taints = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__taints) -> ()

let yojson_of_config__taints =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : config__taints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__taints

[@@@deriving.end]

type config = {
  iam_instance_profile : string prop;
  instance_type : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  security_group_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  autoscaling_metrics_collection :
    config__autoscaling_metrics_collection list;
      [@default []] [@yojson_drop_default ( = )]
  config_encryption : config__config_encryption list;
      [@default []] [@yojson_drop_default ( = )]
  proxy_config : config__proxy_config list;
      [@default []] [@yojson_drop_default ( = )]
  root_volume : config__root_volume list;
      [@default []] [@yojson_drop_default ( = )]
  ssh_config : config__ssh_config list;
      [@default []] [@yojson_drop_default ( = )]
  taints : config__taints list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       iam_instance_profile = v_iam_instance_profile;
       instance_type = v_instance_type;
       labels = v_labels;
       security_group_ids = v_security_group_ids;
       tags = v_tags;
       autoscaling_metrics_collection =
         v_autoscaling_metrics_collection;
       config_encryption = v_config_encryption;
       proxy_config = v_proxy_config;
       root_volume = v_root_volume;
       ssh_config = v_ssh_config;
       taints = v_taints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_taints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__taints) v_taints
           in
           let bnd = "taints", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ssh_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__ssh_config)
               v_ssh_config
           in
           let bnd = "ssh_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_root_volume then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__root_volume)
               v_root_volume
           in
           let bnd = "root_volume", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_proxy_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__proxy_config)
               v_proxy_config
           in
           let bnd = "proxy_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__config_encryption)
               v_config_encryption
           in
           let bnd = "config_encryption", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_autoscaling_metrics_collection then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_config__autoscaling_metrics_collection)
               v_autoscaling_metrics_collection
           in
           let bnd = "autoscaling_metrics_collection", arg in
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
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_iam_instance_profile
         in
         ("iam_instance_profile", arg) :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type management = { auto_repair : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : management) -> ()

let yojson_of_management =
  (function
   | { auto_repair = v_auto_repair } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_auto_repair with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_repair", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management

[@@@deriving.end]

type max_pods_constraint = { max_pods_per_node : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : max_pods_constraint) -> ()

let yojson_of_max_pods_constraint =
  (function
   | { max_pods_per_node = v_max_pods_per_node } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_pods_per_node
         in
         ("max_pods_per_node", arg) :: bnds
       in
       `Assoc bnds
    : max_pods_constraint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_max_pods_constraint

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

type update_settings__surge_settings = {
  max_surge : float prop option; [@option]
  max_unavailable : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : update_settings__surge_settings) -> ()

let yojson_of_update_settings__surge_settings =
  (function
   | { max_surge = v_max_surge; max_unavailable = v_max_unavailable }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_unavailable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unavailable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_surge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_surge", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : update_settings__surge_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_update_settings__surge_settings

[@@@deriving.end]

type update_settings = {
  surge_settings : update_settings__surge_settings list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : update_settings) -> ()

let yojson_of_update_settings =
  (function
   | { surge_settings = v_surge_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_surge_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_update_settings__surge_settings)
               v_surge_settings
           in
           let bnd = "surge_settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : update_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_update_settings

[@@@deriving.end]

type google_container_aws_node_pool = {
  annotations : (string * string prop) list option; [@option]
  cluster : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  subnet_id : string prop;
  version : string prop;
  autoscaling : autoscaling list;
      [@default []] [@yojson_drop_default ( = )]
  config : config list; [@default []] [@yojson_drop_default ( = )]
  management : management list;
      [@default []] [@yojson_drop_default ( = )]
  max_pods_constraint : max_pods_constraint list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  update_settings : update_settings list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_aws_node_pool) -> ()

let yojson_of_google_container_aws_node_pool =
  (function
   | {
       annotations = v_annotations;
       cluster = v_cluster;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       subnet_id = v_subnet_id;
       version = v_version;
       autoscaling = v_autoscaling;
       config = v_config;
       management = v_management;
       max_pods_constraint = v_max_pods_constraint;
       timeouts = v_timeouts;
       update_settings = v_update_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_update_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_update_settings)
               v_update_settings
           in
           let bnd = "update_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_max_pods_constraint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_max_pods_constraint)
               v_max_pods_constraint
           in
           let bnd = "max_pods_constraint", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_management then bnds
         else
           let arg =
             (yojson_of_list yojson_of_management) v_management
           in
           let bnd = "management", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config then bnds
         else
           let arg = (yojson_of_list yojson_of_config) v_config in
           let bnd = "config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_autoscaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_autoscaling) v_autoscaling
           in
           let bnd = "autoscaling", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_container_aws_node_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_aws_node_pool

[@@@deriving.end]

let autoscaling ~max_node_count ~min_node_count () : autoscaling =
  { max_node_count; min_node_count }

let config__autoscaling_metrics_collection ?metrics ~granularity () :
    config__autoscaling_metrics_collection =
  { granularity; metrics }

let config__config_encryption ~kms_key_arn () :
    config__config_encryption =
  { kms_key_arn }

let config__proxy_config ~secret_arn ~secret_version () :
    config__proxy_config =
  { secret_arn; secret_version }

let config__root_volume ?iops ?kms_key_arn ?size_gib ?throughput
    ?volume_type () : config__root_volume =
  { iops; kms_key_arn; size_gib; throughput; volume_type }

let config__ssh_config ~ec2_key_pair () : config__ssh_config =
  { ec2_key_pair }

let config__taints ~effect ~key ~value () : config__taints =
  { effect; key; value }

let config ?instance_type ?labels ?security_group_ids ?tags
    ?(autoscaling_metrics_collection = []) ?(proxy_config = [])
    ?(root_volume = []) ?(ssh_config = []) ?(taints = [])
    ~iam_instance_profile ~config_encryption () : config =
  {
    iam_instance_profile;
    instance_type;
    labels;
    security_group_ids;
    tags;
    autoscaling_metrics_collection;
    config_encryption;
    proxy_config;
    root_volume;
    ssh_config;
    taints;
  }

let management ?auto_repair () : management = { auto_repair }

let max_pods_constraint ~max_pods_per_node () : max_pods_constraint =
  { max_pods_per_node }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let update_settings__surge_settings ?max_surge ?max_unavailable () :
    update_settings__surge_settings =
  { max_surge; max_unavailable }

let update_settings ?(surge_settings = []) () : update_settings =
  { surge_settings }

let google_container_aws_node_pool ?annotations ?id ?project
    ?(management = []) ?timeouts ?(update_settings = []) ~cluster
    ~location ~name ~subnet_id ~version ~autoscaling ~config
    ~max_pods_constraint () : google_container_aws_node_pool =
  {
    annotations;
    cluster;
    id;
    location;
    name;
    project;
    subnet_id;
    version;
    autoscaling;
    config;
    management;
    max_pods_constraint;
    timeouts;
    update_settings;
  }

type t = {
  tf_name : string;
  annotations : (string * string) list prop;
  cluster : string prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  subnet_id : string prop;
  uid : string prop;
  update_time : string prop;
  version : string prop;
}

let make ?annotations ?id ?project ?(management = []) ?timeouts
    ?(update_settings = []) ~cluster ~location ~name ~subnet_id
    ~version ~autoscaling ~config ~max_pods_constraint __id =
  let __type = "google_container_aws_node_pool" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       cluster = Prop.computed __type __id "cluster";
       create_time = Prop.computed __type __id "create_time";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       subnet_id = Prop.computed __type __id "subnet_id";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_aws_node_pool
        (google_container_aws_node_pool ?annotations ?id ?project
           ~management ?timeouts ~update_settings ~cluster ~location
           ~name ~subnet_id ~version ~autoscaling ~config
           ~max_pods_constraint ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?id ?project ?(management = [])
    ?timeouts ?(update_settings = []) ~cluster ~location ~name
    ~subnet_id ~version ~autoscaling ~config ~max_pods_constraint
    __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?id ?project ~management ?timeouts
      ~update_settings ~cluster ~location ~name ~subnet_id ~version
      ~autoscaling ~config ~max_pods_constraint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
