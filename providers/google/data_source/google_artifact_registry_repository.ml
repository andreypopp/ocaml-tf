(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cleanup_policies__most_recent_versions = {
  keep_count : float prop;
  package_name_prefixes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_package_name_prefixes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_package_name_prefixes
           in
           let bnd = "package_name_prefixes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_keep_count in
         ("keep_count", arg) :: bnds
       in
       `Assoc bnds
    : cleanup_policies__most_recent_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cleanup_policies__most_recent_versions

[@@@deriving.end]

type cleanup_policies__condition = {
  newer_than : string prop;
  older_than : string prop;
  package_name_prefixes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tag_prefixes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tag_state : string prop;
  version_name_prefixes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_version_name_prefixes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_version_name_prefixes
           in
           let bnd = "version_name_prefixes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag_state in
         ("tag_state", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_tag_prefixes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tag_prefixes
           in
           let bnd = "tag_prefixes", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_package_name_prefixes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_package_name_prefixes
           in
           let bnd = "package_name_prefixes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_older_than in
         ("older_than", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_newer_than in
         ("newer_than", arg) :: bnds
       in
       `Assoc bnds
    : cleanup_policies__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cleanup_policies__condition

[@@@deriving.end]

type cleanup_policies = {
  action : string prop;
  condition : cleanup_policies__condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop;
  most_recent_versions : cleanup_policies__most_recent_versions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cleanup_policies) -> ()

let yojson_of_cleanup_policies =
  (function
   | {
       action = v_action;
       condition = v_condition;
       id = v_id;
       most_recent_versions = v_most_recent_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_most_recent_versions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cleanup_policies__most_recent_versions)
               v_most_recent_versions
           in
           let bnd = "most_recent_versions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cleanup_policies__condition)
               v_condition
           in
           let bnd = "condition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : cleanup_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cleanup_policies

[@@@deriving.end]

type docker_config = { immutable_tags : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : docker_config) -> ()

let yojson_of_docker_config =
  (function
   | { immutable_tags = v_immutable_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_immutable_tags in
         ("immutable_tags", arg) :: bnds
       in
       `Assoc bnds
    : docker_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_docker_config

[@@@deriving.end]

type maven_config = {
  allow_snapshot_overwrites : bool prop;
  version_policy : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_version_policy
         in
         ("version_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_snapshot_overwrites
         in
         ("allow_snapshot_overwrites", arg) :: bnds
       in
       `Assoc bnds
    : maven_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maven_config

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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_public_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__yum_repository__public_repository)
               v_public_repository
           in
           let bnd = "public_repository", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__yum_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__yum_repository

[@@@deriving.end]

type remote_repository_config__upstream_credentials__username_password_credentials = {
  password_secret_version : string prop;
  username : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_password_secret_version
         in
         ("password_secret_version", arg) :: bnds
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_username_password_credentials then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__upstream_credentials__username_password_credentials)
               v_username_password_credentials
           in
           let bnd = "username_password_credentials", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__upstream_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__upstream_credentials

[@@@deriving.end]

type remote_repository_config__python_repository__custom_repository = {
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       remote_repository_config__python_repository__custom_repository) ->
  ()

let yojson_of_remote_repository_config__python_repository__custom_repository
    =
  (function
   | { uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__python_repository__custom_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_remote_repository_config__python_repository__custom_repository

[@@@deriving.end]

type remote_repository_config__python_repository = {
  custom_repository :
    remote_repository_config__python_repository__custom_repository
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  public_repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config__python_repository) -> ()

let yojson_of_remote_repository_config__python_repository =
  (function
   | {
       custom_repository = v_custom_repository;
       public_repository = v_public_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_repository
         in
         ("public_repository", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__python_repository__custom_repository)
               v_custom_repository
           in
           let bnd = "custom_repository", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__python_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__python_repository

[@@@deriving.end]

type remote_repository_config__npm_repository__custom_repository = {
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       remote_repository_config__npm_repository__custom_repository) ->
  ()

let yojson_of_remote_repository_config__npm_repository__custom_repository
    =
  (function
   | { uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__npm_repository__custom_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_remote_repository_config__npm_repository__custom_repository

[@@@deriving.end]

type remote_repository_config__npm_repository = {
  custom_repository :
    remote_repository_config__npm_repository__custom_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  public_repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config__npm_repository) -> ()

let yojson_of_remote_repository_config__npm_repository =
  (function
   | {
       custom_repository = v_custom_repository;
       public_repository = v_public_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_repository
         in
         ("public_repository", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__npm_repository__custom_repository)
               v_custom_repository
           in
           let bnd = "custom_repository", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__npm_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__npm_repository

[@@@deriving.end]

type remote_repository_config__maven_repository__custom_repository = {
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       remote_repository_config__maven_repository__custom_repository) ->
  ()

let yojson_of_remote_repository_config__maven_repository__custom_repository
    =
  (function
   | { uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__maven_repository__custom_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_remote_repository_config__maven_repository__custom_repository

[@@@deriving.end]

type remote_repository_config__maven_repository = {
  custom_repository :
    remote_repository_config__maven_repository__custom_repository
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  public_repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config__maven_repository) -> ()

let yojson_of_remote_repository_config__maven_repository =
  (function
   | {
       custom_repository = v_custom_repository;
       public_repository = v_public_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_repository
         in
         ("public_repository", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__maven_repository__custom_repository)
               v_custom_repository
           in
           let bnd = "custom_repository", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__maven_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__maven_repository

[@@@deriving.end]

type remote_repository_config__docker_repository__custom_repository = {
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       remote_repository_config__docker_repository__custom_repository) ->
  ()

let yojson_of_remote_repository_config__docker_repository__custom_repository
    =
  (function
   | { uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__docker_repository__custom_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_remote_repository_config__docker_repository__custom_repository

[@@@deriving.end]

type remote_repository_config__docker_repository = {
  custom_repository :
    remote_repository_config__docker_repository__custom_repository
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  public_repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config__docker_repository) -> ()

let yojson_of_remote_repository_config__docker_repository =
  (function
   | {
       custom_repository = v_custom_repository;
       public_repository = v_public_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_repository
         in
         ("public_repository", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__docker_repository__custom_repository)
               v_custom_repository
           in
           let bnd = "custom_repository", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__docker_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__docker_repository

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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_public_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__apt_repository__public_repository)
               v_public_repository
           in
           let bnd = "public_repository", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config__apt_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__apt_repository

[@@@deriving.end]

type remote_repository_config = {
  apt_repository : remote_repository_config__apt_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : string prop;
  disable_upstream_validation : bool prop;
  docker_repository :
    remote_repository_config__docker_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maven_repository : remote_repository_config__maven_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  npm_repository : remote_repository_config__npm_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  python_repository :
    remote_repository_config__python_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  upstream_credentials :
    remote_repository_config__upstream_credentials list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  yum_repository : remote_repository_config__yum_repository list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remote_repository_config) -> ()

let yojson_of_remote_repository_config =
  (function
   | {
       apt_repository = v_apt_repository;
       description = v_description;
       disable_upstream_validation = v_disable_upstream_validation;
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
         if Stdlib.( = ) [] v_yum_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__yum_repository)
               v_yum_repository
           in
           let bnd = "yum_repository", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_upstream_credentials then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__upstream_credentials)
               v_upstream_credentials
           in
           let bnd = "upstream_credentials", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_python_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__python_repository)
               v_python_repository
           in
           let bnd = "python_repository", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_npm_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__npm_repository)
               v_npm_repository
           in
           let bnd = "npm_repository", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maven_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__maven_repository)
               v_maven_repository
           in
           let bnd = "maven_repository", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_docker_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__docker_repository)
               v_docker_repository
           in
           let bnd = "docker_repository", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_disable_upstream_validation
         in
         ("disable_upstream_validation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_apt_repository then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_remote_repository_config__apt_repository)
               v_apt_repository
           in
           let bnd = "apt_repository", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : remote_repository_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config

[@@@deriving.end]

type virtual_repository_config__upstream_policies = {
  id : string prop;
  priority : float prop;
  repository : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : virtual_repository_config__upstream_policies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_repository_config__upstream_policies

[@@@deriving.end]

type virtual_repository_config = {
  upstream_policies :
    virtual_repository_config__upstream_policies list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_upstream_policies then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_virtual_repository_config__upstream_policies)
               v_upstream_policies
           in
           let bnd = "upstream_policies", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : virtual_repository_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_repository_config

[@@@deriving.end]

type google_artifact_registry_repository = {
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  repository_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_artifact_registry_repository) -> ()

let yojson_of_google_artifact_registry_repository =
  (function
   | {
       id = v_id;
       location = v_location;
       project = v_project;
       repository_id = v_repository_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : google_artifact_registry_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_artifact_registry_repository

[@@@deriving.end]

let google_artifact_registry_repository ?id ?project ~location
    ~repository_id () : google_artifact_registry_repository =
  { id; location; project; repository_id }

type t = {
  tf_name : string;
  cleanup_policies : cleanup_policies list prop;
  cleanup_policy_dry_run : bool prop;
  create_time : string prop;
  description : string prop;
  docker_config : docker_config list prop;
  effective_labels : (string * string) list prop;
  format : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  maven_config : maven_config list prop;
  mode : string prop;
  name : string prop;
  project : string prop;
  remote_repository_config : remote_repository_config list prop;
  repository_id : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  virtual_repository_config : virtual_repository_config list prop;
}

let make ?id ?project ~location ~repository_id __id =
  let __type = "google_artifact_registry_repository" in
  let __attrs =
    ({
       tf_name = __id;
       cleanup_policies =
         Prop.computed __type __id "cleanup_policies";
       cleanup_policy_dry_run =
         Prop.computed __type __id "cleanup_policy_dry_run";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       docker_config = Prop.computed __type __id "docker_config";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       maven_config = Prop.computed __type __id "maven_config";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       remote_repository_config =
         Prop.computed __type __id "remote_repository_config";
       repository_id = Prop.computed __type __id "repository_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
       virtual_repository_config =
         Prop.computed __type __id "virtual_repository_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_artifact_registry_repository
        (google_artifact_registry_repository ?id ?project ~location
           ~repository_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~repository_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~repository_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
