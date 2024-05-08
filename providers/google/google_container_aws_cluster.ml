(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authorization__admin_groups = { group : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization__admin_groups) -> ()

let yojson_of_authorization__admin_groups =
  (function
   | { group = v_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group in
         ("group", arg) :: bnds
       in
       `Assoc bnds
    : authorization__admin_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization__admin_groups

[@@@deriving.end]

type authorization__admin_users = { username : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization__admin_users) -> ()

let yojson_of_authorization__admin_users =
  (function
   | { username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       `Assoc bnds
    : authorization__admin_users -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization__admin_users

[@@@deriving.end]

type authorization = {
  admin_groups : authorization__admin_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  admin_users : authorization__admin_users list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization) -> ()

let yojson_of_authorization =
  (function
   | { admin_groups = v_admin_groups; admin_users = v_admin_users }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_users then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authorization__admin_users)
               v_admin_users
           in
           let bnd = "admin_users", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_groups then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authorization__admin_groups)
               v_admin_groups
           in
           let bnd = "admin_groups", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization

[@@@deriving.end]

type binary_authorization = {
  evaluation_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : binary_authorization) -> ()

let yojson_of_binary_authorization =
  (function
   | { evaluation_mode = v_evaluation_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_evaluation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : binary_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_binary_authorization

[@@@deriving.end]

type control_plane__aws_services_authentication = {
  role_arn : string prop;
  role_session_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__aws_services_authentication) -> ()

let yojson_of_control_plane__aws_services_authentication =
  (function
   | {
       role_arn = v_role_arn;
       role_session_name = v_role_session_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_role_session_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_session_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : control_plane__aws_services_authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__aws_services_authentication

[@@@deriving.end]

type control_plane__config_encryption = { kms_key_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__config_encryption) -> ()

let yojson_of_control_plane__config_encryption =
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
    : control_plane__config_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__config_encryption

[@@@deriving.end]

type control_plane__database_encryption = {
  kms_key_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__database_encryption) -> ()

let yojson_of_control_plane__database_encryption =
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
    : control_plane__database_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__database_encryption

[@@@deriving.end]

type control_plane__main_volume = {
  iops : float prop option; [@option]
  kms_key_arn : string prop option; [@option]
  size_gib : float prop option; [@option]
  throughput : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__main_volume) -> ()

let yojson_of_control_plane__main_volume =
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
    : control_plane__main_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__main_volume

[@@@deriving.end]

type control_plane__proxy_config = {
  secret_arn : string prop;
  secret_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__proxy_config) -> ()

let yojson_of_control_plane__proxy_config =
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
    : control_plane__proxy_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__proxy_config

[@@@deriving.end]

type control_plane__root_volume = {
  iops : float prop option; [@option]
  kms_key_arn : string prop option; [@option]
  size_gib : float prop option; [@option]
  throughput : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__root_volume) -> ()

let yojson_of_control_plane__root_volume =
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
    : control_plane__root_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__root_volume

[@@@deriving.end]

type control_plane__ssh_config = { ec2_key_pair : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__ssh_config) -> ()

let yojson_of_control_plane__ssh_config =
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
    : control_plane__ssh_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__ssh_config

[@@@deriving.end]

type control_plane = {
  iam_instance_profile : string prop;
  instance_type : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : (string * string prop) list option; [@option]
  version : string prop;
  aws_services_authentication :
    control_plane__aws_services_authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  config_encryption : control_plane__config_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  database_encryption : control_plane__database_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  main_volume : control_plane__main_volume list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  proxy_config : control_plane__proxy_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  root_volume : control_plane__root_volume list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssh_config : control_plane__ssh_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane) -> ()

let yojson_of_control_plane =
  (function
   | {
       iam_instance_profile = v_iam_instance_profile;
       instance_type = v_instance_type;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       version = v_version;
       aws_services_authentication = v_aws_services_authentication;
       config_encryption = v_config_encryption;
       database_encryption = v_database_encryption;
       main_volume = v_main_volume;
       proxy_config = v_proxy_config;
       root_volume = v_root_volume;
       ssh_config = v_ssh_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ssh_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane__ssh_config)
               v_ssh_config
           in
           let bnd = "ssh_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_root_volume then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane__root_volume)
               v_root_volume
           in
           let bnd = "root_volume", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_proxy_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane__proxy_config)
               v_proxy_config
           in
           let bnd = "proxy_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_main_volume then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane__main_volume)
               v_main_volume
           in
           let bnd = "main_volume", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_database_encryption then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_control_plane__database_encryption)
               v_database_encryption
           in
           let bnd = "database_encryption", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_config_encryption then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_control_plane__config_encryption)
               v_config_encryption
           in
           let bnd = "config_encryption", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aws_services_authentication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_control_plane__aws_services_authentication)
               v_aws_services_authentication
           in
           let bnd = "aws_services_authentication", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
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
    : control_plane -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane

[@@@deriving.end]

type fleet = { project : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : fleet) -> ()

let yojson_of_fleet =
  (function
   | { project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet

[@@@deriving.end]

type networking = {
  per_node_pool_sg_rules_disabled : bool prop option; [@option]
  pod_address_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_address_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : networking) -> ()

let yojson_of_networking =
  (function
   | {
       per_node_pool_sg_rules_disabled =
         v_per_node_pool_sg_rules_disabled;
       pod_address_cidr_blocks = v_pod_address_cidr_blocks;
       service_address_cidr_blocks = v_service_address_cidr_blocks;
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
         if Stdlib.( = ) [] v_service_address_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_service_address_cidr_blocks
           in
           let bnd = "service_address_cidr_blocks", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_address_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_pod_address_cidr_blocks
           in
           let bnd = "pod_address_cidr_blocks", arg in
           bnd :: bnds
       in
       let bnds =
         match v_per_node_pool_sg_rules_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "per_node_pool_sg_rules_disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : networking -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_networking

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

type workload_identity_config = {
  identity_provider : string prop;
  issuer_uri : string prop;
  workload_pool : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workload_identity_config) -> ()

let yojson_of_workload_identity_config =
  (function
   | {
       identity_provider = v_identity_provider;
       issuer_uri = v_issuer_uri;
       workload_pool = v_workload_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workload_pool in
         ("workload_pool", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer_uri in
         ("issuer_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_provider
         in
         ("identity_provider", arg) :: bnds
       in
       `Assoc bnds
    : workload_identity_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload_identity_config

[@@@deriving.end]

type google_container_aws_cluster = {
  annotations : (string * string prop) list option; [@option]
  aws_region : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  authorization : authorization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  binary_authorization : binary_authorization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  control_plane : control_plane list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fleet : fleet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  networking : networking list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_aws_cluster) -> ()

let yojson_of_google_container_aws_cluster =
  (function
   | {
       annotations = v_annotations;
       aws_region = v_aws_region;
       description = v_description;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       authorization = v_authorization;
       binary_authorization = v_binary_authorization;
       control_plane = v_control_plane;
       fleet = v_fleet;
       networking = v_networking;
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
         if Stdlib.( = ) [] v_networking then bnds
         else
           let arg =
             (yojson_of_list yojson_of_networking) v_networking
           in
           let bnd = "networking", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fleet then bnds
         else
           let arg = (yojson_of_list yojson_of_fleet) v_fleet in
           let bnd = "fleet", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_control_plane then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane) v_control_plane
           in
           let bnd = "control_plane", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_binary_authorization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_binary_authorization)
               v_binary_authorization
           in
           let bnd = "binary_authorization", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authorization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authorization) v_authorization
           in
           let bnd = "authorization", arg in
           bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_aws_region in
         ("aws_region", arg) :: bnds
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
    : google_container_aws_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_aws_cluster

[@@@deriving.end]

let authorization__admin_groups ~group () :
    authorization__admin_groups =
  { group }

let authorization__admin_users ~username () :
    authorization__admin_users =
  { username }

let authorization ?(admin_groups = []) ~admin_users () :
    authorization =
  { admin_groups; admin_users }

let binary_authorization ?evaluation_mode () : binary_authorization =
  { evaluation_mode }

let control_plane__aws_services_authentication ?role_session_name
    ~role_arn () : control_plane__aws_services_authentication =
  { role_arn; role_session_name }

let control_plane__config_encryption ~kms_key_arn () :
    control_plane__config_encryption =
  { kms_key_arn }

let control_plane__database_encryption ~kms_key_arn () :
    control_plane__database_encryption =
  { kms_key_arn }

let control_plane__main_volume ?iops ?kms_key_arn ?size_gib
    ?throughput ?volume_type () : control_plane__main_volume =
  { iops; kms_key_arn; size_gib; throughput; volume_type }

let control_plane__proxy_config ~secret_arn ~secret_version () :
    control_plane__proxy_config =
  { secret_arn; secret_version }

let control_plane__root_volume ?iops ?kms_key_arn ?size_gib
    ?throughput ?volume_type () : control_plane__root_volume =
  { iops; kms_key_arn; size_gib; throughput; volume_type }

let control_plane__ssh_config ~ec2_key_pair () :
    control_plane__ssh_config =
  { ec2_key_pair }

let control_plane ?instance_type ?security_group_ids ?tags
    ?(main_volume = []) ?(proxy_config = []) ?(root_volume = [])
    ?(ssh_config = []) ~iam_instance_profile ~subnet_ids ~version
    ~aws_services_authentication ~config_encryption
    ~database_encryption () : control_plane =
  {
    iam_instance_profile;
    instance_type;
    security_group_ids;
    subnet_ids;
    tags;
    version;
    aws_services_authentication;
    config_encryption;
    database_encryption;
    main_volume;
    proxy_config;
    root_volume;
    ssh_config;
  }

let fleet ?project () : fleet = { project }

let networking ?per_node_pool_sg_rules_disabled
    ~pod_address_cidr_blocks ~service_address_cidr_blocks ~vpc_id ()
    : networking =
  {
    per_node_pool_sg_rules_disabled;
    pod_address_cidr_blocks;
    service_address_cidr_blocks;
    vpc_id;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_container_aws_cluster ?annotations ?description ?id
    ?project ?(binary_authorization = []) ?timeouts ~aws_region
    ~location ~name ~authorization ~control_plane ~fleet ~networking
    () : google_container_aws_cluster =
  {
    annotations;
    aws_region;
    description;
    id;
    location;
    name;
    project;
    authorization;
    binary_authorization;
    control_plane;
    fleet;
    networking;
    timeouts;
  }

type t = {
  tf_name : string;
  annotations : (string * string) list prop;
  aws_region : string prop;
  create_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  endpoint : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config : workload_identity_config list prop;
}

let make ?annotations ?description ?id ?project
    ?(binary_authorization = []) ?timeouts ~aws_region ~location
    ~name ~authorization ~control_plane ~fleet ~networking __id =
  let __type = "google_container_aws_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       aws_region = Prop.computed __type __id "aws_region";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       endpoint = Prop.computed __type __id "endpoint";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       workload_identity_config =
         Prop.computed __type __id "workload_identity_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_aws_cluster
        (google_container_aws_cluster ?annotations ?description ?id
           ?project ~binary_authorization ?timeouts ~aws_region
           ~location ~name ~authorization ~control_plane ~fleet
           ~networking ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description ?id ?project
    ?(binary_authorization = []) ?timeouts ~aws_region ~location
    ~name ~authorization ~control_plane ~fleet ~networking __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?id ?project ~binary_authorization
      ?timeouts ~aws_region ~location ~name ~authorization
      ~control_plane ~fleet ~networking __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
