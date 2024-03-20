(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cleanup_policies__most_recent_versions = {
  keep_count : float prop;
  package_name_prefixes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_package_name_prefixes
         in
         ("package_name_prefixes", arg) :: bnds
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
  tag_prefixes : string prop list;
  tag_state : string prop;
  version_name_prefixes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_version_name_prefixes
         in
         ("version_name_prefixes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag_state in
         ("tag_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_tag_prefixes
         in
         ("tag_prefixes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_package_name_prefixes
         in
         ("package_name_prefixes", arg) :: bnds
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
  id : string prop;
  most_recent_versions : cleanup_policies__most_recent_versions list;
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
         let arg =
           yojson_of_list
             yojson_of_cleanup_policies__most_recent_versions
             v_most_recent_versions
         in
         ("most_recent_versions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cleanup_policies__condition
             v_condition
         in
         ("condition", arg) :: bnds
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

type remote_repository_config__python_repository = {
  public_repository : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_public_repository
         in
         ("public_repository", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__python_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__python_repository

[@@@deriving.end]

type remote_repository_config__npm_repository = {
  public_repository : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_public_repository
         in
         ("public_repository", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__npm_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__npm_repository

[@@@deriving.end]

type remote_repository_config__maven_repository = {
  public_repository : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_public_repository
         in
         ("public_repository", arg) :: bnds
       in
       `Assoc bnds
    : remote_repository_config__maven_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remote_repository_config__maven_repository

[@@@deriving.end]

type remote_repository_config__docker_repository = {
  public_repository : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_public_repository
         in
         ("public_repository", arg) :: bnds
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

type remote_repository_config = {
  apt_repository : remote_repository_config__apt_repository list;
  description : string prop;
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
       apt_repository = v_apt_repository;
       description = v_description;
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_remote_repository_config__apt_repository
             v_apt_repository
         in
         ("apt_repository", arg) :: bnds
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
