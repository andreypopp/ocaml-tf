(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cleanup_policies__condition = {
  newer_than : string prop option; [@option]
  older_than : string prop option; [@option]
  package_name_prefixes : string prop list option; [@option]
  tag_prefixes : string prop list option; [@option]
  tag_state : string prop option; [@option]
  version_name_prefixes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cleanup_policies__condition) -> ()

let yojson_of_cleanup_policies__condition =
  (function
   | {
       newer_than = v_newer_than;
       older_than = v_older_than;
       package_name_prefixes = v_package_name_prefixes;
       tag_prefixes = v_tag_prefixes;
       tag_state = v_tag_state;
       version_name_prefixes = v_version_name_prefixes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_name_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "version_name_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tag_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tag_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tag_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_package_name_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "package_name_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_older_than with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "older_than", arg in
             bnd :: bnds
       in
       let bnds =
         match v_newer_than with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "newer_than", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cleanup_policies__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cleanup_policies__condition

[@@@deriving.end]

type cleanup_policies__most_recent_versions = {
  keep_count : float prop option; [@option]
  package_name_prefixes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cleanup_policies__most_recent_versions) -> ()

let yojson_of_cleanup_policies__most_recent_versions =
  (function
   | {
       keep_count = v_keep_count;
       package_name_prefixes = v_package_name_prefixes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_package_name_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "package_name_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keep_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "keep_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cleanup_policies__most_recent_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cleanup_policies__most_recent_versions

[@@@deriving.end]

type cleanup_policies = {
  action : string prop option; [@option]
  id : string prop;
  condition : cleanup_policies__condition list;
  most_recent_versions : cleanup_policies__most_recent_versions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cleanup_policies) -> ()

let yojson_of_cleanup_policies =
  (function
   | {
       action = v_action;
       id = v_id;
       condition = v_condition;
       most_recent_versions = v_most_recent_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_cleanup_policies__most_recent_versions
             v_most_recent_versions
         in
         ("most_recent_versions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cleanup_policies__condition
             v_condition
         in
         ("condition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cleanup_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cleanup_policies

[@@@deriving.end]

type docker_config = { immutable_tags : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : docker_config) -> ()

let yojson_of_docker_config =
  (function
   | { immutable_tags = v_immutable_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_immutable_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "immutable_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : docker_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_docker_config

[@@@deriving.end]

type maven_config = {
  allow_snapshot_overwrites : bool prop option; [@option]
  version_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maven_config) -> ()

let yojson_of_maven_config =
  (function
   | {
       allow_snapshot_overwrites = v_allow_snapshot_overwrites;
       version_policy = v_version_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_snapshot_overwrites with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_snapshot_overwrites", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maven_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maven_config

[@@@deriving.end]

type remote_repository_config__apt_repository__public_repository = {
  repository_base : string prop;
  repository_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       remote_repository_config__apt_repository__public_repository) ->
  ()

let yojson_of_remote_repository_config__apt_repository__public_repository
    =
  (function
   | {
       repository_base = v_repository_base;
       repository_path = v_repository_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_path
         in
         ("repository_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_base
         in
         ("repository_base", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__apt_repository__public_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_remote_repository_config__apt_repository__public_repository

[@@@deriving.end]

type remote_repository_config__apt_repository = {
  public_repository :
    remote_repository_config__apt_repository__public_repository list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config__apt_repository) -> ()

let yojson_of_remote_repository_config__apt_repository =
  (function
   | { public_repository = v_public_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__apt_repository__public_repository
             v_public_repository
         in
         ("public_repository", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__apt_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__apt_repository

[@@@deriving.end]

type remote_repository_config__docker_repository = {
  public_repository : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config__docker_repository) -> ()

let yojson_of_remote_repository_config__docker_repository =
  (function
   | { public_repository = v_public_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_public_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_repository", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__docker_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__docker_repository

[@@@deriving.end]

type remote_repository_config__maven_repository = {
  public_repository : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config__maven_repository) -> ()

let yojson_of_remote_repository_config__maven_repository =
  (function
   | { public_repository = v_public_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_public_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_repository", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__maven_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__maven_repository

[@@@deriving.end]

type remote_repository_config__npm_repository = {
  public_repository : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config__npm_repository) -> ()

let yojson_of_remote_repository_config__npm_repository =
  (function
   | { public_repository = v_public_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_public_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_repository", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__npm_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__npm_repository

[@@@deriving.end]

type remote_repository_config__python_repository = {
  public_repository : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config__python_repository) -> ()

let yojson_of_remote_repository_config__python_repository =
  (function
   | { public_repository = v_public_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_public_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_repository", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__python_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__python_repository

[@@@deriving.end]

type remote_repository_config__upstream_credentials__username_password_credentials = {
  password_secret_version : string prop option; [@option]
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       remote_repository_config__upstream_credentials__username_password_credentials) ->
  ()

let yojson_of_remote_repository_config__upstream_credentials__username_password_credentials
    =
  (function
   | {
       password_secret_version = v_password_secret_version;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_secret_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_secret_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__upstream_credentials__username_password_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_remote_repository_config__upstream_credentials__username_password_credentials

[@@@deriving.end]

type remote_repository_config__upstream_credentials = {
  username_password_credentials :
    remote_repository_config__upstream_credentials__username_password_credentials
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : remote_repository_config__upstream_credentials) -> ()

let yojson_of_remote_repository_config__upstream_credentials =
  (function
   | {
       username_password_credentials =
         v_username_password_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__upstream_credentials__username_password_credentials
             v_username_password_credentials
         in
         ("username_password_credentials", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__upstream_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__upstream_credentials

[@@@deriving.end]

type remote_repository_config__yum_repository__public_repository = {
  repository_base : string prop;
  repository_path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       remote_repository_config__yum_repository__public_repository) ->
  ()

let yojson_of_remote_repository_config__yum_repository__public_repository
    =
  (function
   | {
       repository_base = v_repository_base;
       repository_path = v_repository_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_path
         in
         ("repository_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_base
         in
         ("repository_base", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__yum_repository__public_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_remote_repository_config__yum_repository__public_repository

[@@@deriving.end]

type remote_repository_config__yum_repository = {
  public_repository :
    remote_repository_config__yum_repository__public_repository list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config__yum_repository) -> ()

let yojson_of_remote_repository_config__yum_repository =
  (function
   | { public_repository = v_public_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__yum_repository__public_repository
             v_public_repository
         in
         ("public_repository", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__yum_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__yum_repository

[@@@deriving.end]

type remote_repository_config = {
  description : string prop option; [@option]
  apt_repository : remote_repository_config__apt_repository list;
  docker_repository :
    remote_repository_config__docker_repository list;
  maven_repository : remote_repository_config__maven_repository list;
  npm_repository : remote_repository_config__npm_repository list;
  python_repository :
    remote_repository_config__python_repository list;
  upstream_credentials :
    remote_repository_config__upstream_credentials list;
  yum_repository : remote_repository_config__yum_repository list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config) -> ()

let yojson_of_remote_repository_config =
  (function
   | {
       description = v_description;
       apt_repository = v_apt_repository;
       docker_repository = v_docker_repository;
       maven_repository = v_maven_repository;
       npm_repository = v_npm_repository;
       python_repository = v_python_repository;
       upstream_credentials = v_upstream_credentials;
       yum_repository = v_yum_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__yum_repository
             v_yum_repository
         in
         ("yum_repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__upstream_credentials
             v_upstream_credentials
         in
         ("upstream_credentials", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__python_repository
             v_python_repository
         in
         ("python_repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__npm_repository
             v_npm_repository
         in
         ("npm_repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__maven_repository
             v_maven_repository
         in
         ("maven_repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__docker_repository
             v_docker_repository
         in
         ("docker_repository", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__apt_repository
             v_apt_repository
         in
         ("apt_repository", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config

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

type virtual_repository_config__upstream_policies = {
  id : string prop option; [@option]
  priority : float prop option; [@option]
  repository : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_repository_config__upstream_policies) -> ()

let yojson_of_virtual_repository_config__upstream_policies =
  (function
   | { id = v_id; priority = v_priority; repository = v_repository }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
       `Assoc bnds
    : virtual_repository_config__upstream_policies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_repository_config__upstream_policies

[@@@deriving.end]

type virtual_repository_config = {
  upstream_policies :
    virtual_repository_config__upstream_policies list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_repository_config) -> ()

let yojson_of_virtual_repository_config =
  (function
   | { upstream_policies = v_upstream_policies } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_virtual_repository_config__upstream_policies
             v_upstream_policies
         in
         ("upstream_policies", arg) :: bnds
       in
       `Assoc bnds
    : virtual_repository_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_repository_config

[@@@deriving.end]

type google_artifact_registry_repository = {
  cleanup_policy_dry_run : bool prop option; [@option]
  description : string prop option; [@option]
  format : string prop;
  id : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop option; [@option]
  mode : string prop option; [@option]
  project : string prop option; [@option]
  repository_id : string prop;
  cleanup_policies : cleanup_policies list;
  docker_config : docker_config list;
  maven_config : maven_config list;
  remote_repository_config : remote_repository_config list;
  timeouts : timeouts option;
  virtual_repository_config : virtual_repository_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_artifact_registry_repository) -> ()

let yojson_of_google_artifact_registry_repository =
  (function
   | {
       cleanup_policy_dry_run = v_cleanup_policy_dry_run;
       description = v_description;
       format = v_format;
       id = v_id;
       kms_key_name = v_kms_key_name;
       labels = v_labels;
       location = v_location;
       mode = v_mode;
       project = v_project;
       repository_id = v_repository_id;
       cleanup_policies = v_cleanup_policies;
       docker_config = v_docker_config;
       maven_config = v_maven_config;
       remote_repository_config = v_remote_repository_config;
       timeouts = v_timeouts;
       virtual_repository_config = v_virtual_repository_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_virtual_repository_config
             v_virtual_repository_config
         in
         ("virtual_repository_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_remote_repository_config
             v_remote_repository_config
         in
         ("remote_repository_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_maven_config v_maven_config
         in
         ("maven_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_docker_config v_docker_config
         in
         ("docker_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cleanup_policies
             v_cleanup_policies
         in
         ("cleanup_policies", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository_id in
         ("repository_id", arg) :: bnds
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
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
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
         match v_cleanup_policy_dry_run with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cleanup_policy_dry_run", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_artifact_registry_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_artifact_registry_repository

[@@@deriving.end]

let cleanup_policies__condition ?newer_than ?older_than
    ?package_name_prefixes ?tag_prefixes ?tag_state
    ?version_name_prefixes () : cleanup_policies__condition =
  {
    newer_than;
    older_than;
    package_name_prefixes;
    tag_prefixes;
    tag_state;
    version_name_prefixes;
  }

let cleanup_policies__most_recent_versions ?keep_count
    ?package_name_prefixes () :
    cleanup_policies__most_recent_versions =
  { keep_count; package_name_prefixes }

let cleanup_policies ?action ?(condition = [])
    ?(most_recent_versions = []) ~id () : cleanup_policies =
  { action; id; condition; most_recent_versions }

let docker_config ?immutable_tags () : docker_config =
  { immutable_tags }

let maven_config ?allow_snapshot_overwrites ?version_policy () :
    maven_config =
  { allow_snapshot_overwrites; version_policy }

let remote_repository_config__apt_repository__public_repository
    ~repository_base ~repository_path () :
    remote_repository_config__apt_repository__public_repository =
  { repository_base; repository_path }

let remote_repository_config__apt_repository
    ?(public_repository = []) () :
    remote_repository_config__apt_repository =
  { public_repository }

let remote_repository_config__docker_repository ?public_repository ()
    : remote_repository_config__docker_repository =
  { public_repository }

let remote_repository_config__maven_repository ?public_repository ()
    : remote_repository_config__maven_repository =
  { public_repository }

let remote_repository_config__npm_repository ?public_repository () :
    remote_repository_config__npm_repository =
  { public_repository }

let remote_repository_config__python_repository ?public_repository ()
    : remote_repository_config__python_repository =
  { public_repository }

let remote_repository_config__upstream_credentials__username_password_credentials
    ?password_secret_version ?username () :
    remote_repository_config__upstream_credentials__username_password_credentials
    =
  { password_secret_version; username }

let remote_repository_config__upstream_credentials
    ?(username_password_credentials = []) () :
    remote_repository_config__upstream_credentials =
  { username_password_credentials }

let remote_repository_config__yum_repository__public_repository
    ~repository_base ~repository_path () :
    remote_repository_config__yum_repository__public_repository =
  { repository_base; repository_path }

let remote_repository_config__yum_repository
    ?(public_repository = []) () :
    remote_repository_config__yum_repository =
  { public_repository }

let remote_repository_config ?description ?(apt_repository = [])
    ?(docker_repository = []) ?(maven_repository = [])
    ?(npm_repository = []) ?(python_repository = [])
    ?(upstream_credentials = []) ?(yum_repository = []) () :
    remote_repository_config =
  {
    description;
    apt_repository;
    docker_repository;
    maven_repository;
    npm_repository;
    python_repository;
    upstream_credentials;
    yum_repository;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let virtual_repository_config__upstream_policies ?id ?priority
    ?repository () : virtual_repository_config__upstream_policies =
  { id; priority; repository }

let virtual_repository_config ?(upstream_policies = []) () :
    virtual_repository_config =
  { upstream_policies }

let google_artifact_registry_repository ?cleanup_policy_dry_run
    ?description ?id ?kms_key_name ?labels ?location ?mode ?project
    ?(docker_config = []) ?(maven_config = [])
    ?(remote_repository_config = []) ?timeouts
    ?(virtual_repository_config = []) ~format ~repository_id
    ~cleanup_policies () : google_artifact_registry_repository =
  {
    cleanup_policy_dry_run;
    description;
    format;
    id;
    kms_key_name;
    labels;
    location;
    mode;
    project;
    repository_id;
    cleanup_policies;
    docker_config;
    maven_config;
    remote_repository_config;
    timeouts;
    virtual_repository_config;
  }

type t = {
  cleanup_policy_dry_run : bool prop;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  format : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  mode : string prop;
  name : string prop;
  project : string prop;
  repository_id : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?cleanup_policy_dry_run ?description ?id ?kms_key_name
    ?labels ?location ?mode ?project ?(docker_config = [])
    ?(maven_config = []) ?(remote_repository_config = []) ?timeouts
    ?(virtual_repository_config = []) ~format ~repository_id
    ~cleanup_policies __id =
  let __type = "google_artifact_registry_repository" in
  let __attrs =
    ({
       cleanup_policy_dry_run =
         Prop.computed __type __id "cleanup_policy_dry_run";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       repository_id = Prop.computed __type __id "repository_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_artifact_registry_repository
        (google_artifact_registry_repository ?cleanup_policy_dry_run
           ?description ?id ?kms_key_name ?labels ?location ?mode
           ?project ~docker_config ~maven_config
           ~remote_repository_config ?timeouts
           ~virtual_repository_config ~format ~repository_id
           ~cleanup_policies ());
    attrs = __attrs;
  }

let register ?tf_module ?cleanup_policy_dry_run ?description ?id
    ?kms_key_name ?labels ?location ?mode ?project
    ?(docker_config = []) ?(maven_config = [])
    ?(remote_repository_config = []) ?timeouts
    ?(virtual_repository_config = []) ~format ~repository_id
    ~cleanup_policies __id =
  let (r : _ Tf_core.resource) =
    make ?cleanup_policy_dry_run ?description ?id ?kms_key_name
      ?labels ?location ?mode ?project ~docker_config ~maven_config
      ~remote_repository_config ?timeouts ~virtual_repository_config
      ~format ~repository_id ~cleanup_policies __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
