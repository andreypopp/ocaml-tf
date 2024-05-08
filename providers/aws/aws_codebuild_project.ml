(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type artifacts = {
  artifact_identifier : string prop option; [@option]
  bucket_owner_access : string prop option; [@option]
  encryption_disabled : bool prop option; [@option]
  location : string prop option; [@option]
  name : string prop option; [@option]
  namespace_type : string prop option; [@option]
  override_artifact_name : bool prop option; [@option]
  packaging : string prop option; [@option]
  path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : artifacts) -> ()

let yojson_of_artifacts =
  (function
   | {
       artifact_identifier = v_artifact_identifier;
       bucket_owner_access = v_bucket_owner_access;
       encryption_disabled = v_encryption_disabled;
       location = v_location;
       name = v_name;
       namespace_type = v_namespace_type;
       override_artifact_name = v_override_artifact_name;
       packaging = v_packaging;
       path = v_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_packaging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "packaging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_override_artifact_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "override_artifact_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_encryption_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encryption_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_owner_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_owner_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_artifact_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "artifact_identifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : artifacts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_artifacts

[@@@deriving.end]

type build_batch_config__restrictions = {
  compute_types_allowed : string prop list option; [@option]
  maximum_builds_allowed : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_batch_config__restrictions) -> ()

let yojson_of_build_batch_config__restrictions =
  (function
   | {
       compute_types_allowed = v_compute_types_allowed;
       maximum_builds_allowed = v_maximum_builds_allowed;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_maximum_builds_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_builds_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compute_types_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "compute_types_allowed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build_batch_config__restrictions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_batch_config__restrictions

[@@@deriving.end]

type build_batch_config = {
  combine_artifacts : bool prop option; [@option]
  service_role : string prop;
  timeout_in_mins : float prop option; [@option]
  restrictions : build_batch_config__restrictions list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : build_batch_config) -> ()

let yojson_of_build_batch_config =
  (function
   | {
       combine_artifacts = v_combine_artifacts;
       service_role = v_service_role;
       timeout_in_mins = v_timeout_in_mins;
       restrictions = v_restrictions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_restrictions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_build_batch_config__restrictions)
               v_restrictions
           in
           let bnd = "restrictions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timeout_in_mins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_mins", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_role in
         ("service_role", arg) :: bnds
       in
       let bnds =
         match v_combine_artifacts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "combine_artifacts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : build_batch_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_build_batch_config

[@@@deriving.end]

type cache = {
  location : string prop option; [@option]
  modes : string prop list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache) -> ()

let yojson_of_cache =
  (function
   | { location = v_location; modes = v_modes; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_modes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "modes", arg in
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
       `Assoc bnds
    : cache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache

[@@@deriving.end]

type environment__environment_variable = {
  name : string prop;
  type_ : string prop option; [@option] [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : environment__environment_variable) -> ()

let yojson_of_environment__environment_variable =
  (function
   | { name = v_name; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : environment__environment_variable ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_environment__environment_variable

[@@@deriving.end]

type environment__registry_credential = {
  credential : string prop;
  credential_provider : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : environment__registry_credential) -> ()

let yojson_of_environment__registry_credential =
  (function
   | {
       credential = v_credential;
       credential_provider = v_credential_provider;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_credential_provider
         in
         ("credential_provider", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_credential in
         ("credential", arg) :: bnds
       in
       `Assoc bnds
    : environment__registry_credential ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_environment__registry_credential

[@@@deriving.end]

type environment = {
  certificate : string prop option; [@option]
  compute_type : string prop;
  image : string prop;
  image_pull_credentials_type : string prop option; [@option]
  privileged_mode : bool prop option; [@option]
  type_ : string prop; [@key "type"]
  environment_variable : environment__environment_variable list;
      [@default []] [@yojson_drop_default ( = )]
  registry_credential : environment__registry_credential list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : environment) -> ()

let yojson_of_environment =
  (function
   | {
       certificate = v_certificate;
       compute_type = v_compute_type;
       image = v_image;
       image_pull_credentials_type = v_image_pull_credentials_type;
       privileged_mode = v_privileged_mode;
       type_ = v_type_;
       environment_variable = v_environment_variable;
       registry_credential = v_registry_credential;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_registry_credential then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_environment__registry_credential)
               v_registry_credential
           in
           let bnd = "registry_credential", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_environment_variable then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_environment__environment_variable)
               v_environment_variable
           in
           let bnd = "environment_variable", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_privileged_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "privileged_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_pull_credentials_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_pull_credentials_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image in
         ("image", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_compute_type in
         ("compute_type", arg) :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : environment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_environment

[@@@deriving.end]

type file_system_locations = {
  identifier : string prop option; [@option]
  location : string prop option; [@option]
  mount_options : string prop option; [@option]
  mount_point : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : file_system_locations) -> ()

let yojson_of_file_system_locations =
  (function
   | {
       identifier = v_identifier;
       location = v_location;
       mount_options = v_mount_options;
       mount_point = v_mount_point;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_mount_point with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_point", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mount_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_options", arg in
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
         match v_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : file_system_locations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_file_system_locations

[@@@deriving.end]

type logs_config__cloudwatch_logs = {
  group_name : string prop option; [@option]
  status : string prop option; [@option]
  stream_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs_config__cloudwatch_logs) -> ()

let yojson_of_logs_config__cloudwatch_logs =
  (function
   | {
       group_name = v_group_name;
       status = v_status;
       stream_name = v_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stream_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logs_config__cloudwatch_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs_config__cloudwatch_logs

[@@@deriving.end]

type logs_config__s3_logs = {
  bucket_owner_access : string prop option; [@option]
  encryption_disabled : bool prop option; [@option]
  location : string prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs_config__s3_logs) -> ()

let yojson_of_logs_config__s3_logs =
  (function
   | {
       bucket_owner_access = v_bucket_owner_access;
       encryption_disabled = v_encryption_disabled;
       location = v_location;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
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
         match v_encryption_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encryption_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_owner_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_owner_access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logs_config__s3_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs_config__s3_logs

[@@@deriving.end]

type logs_config = {
  cloudwatch_logs : logs_config__cloudwatch_logs list;
      [@default []] [@yojson_drop_default ( = )]
  s3_logs : logs_config__s3_logs list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs_config) -> ()

let yojson_of_logs_config =
  (function
   | { cloudwatch_logs = v_cloudwatch_logs; s3_logs = v_s3_logs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_s3_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logs_config__s3_logs)
               v_s3_logs
           in
           let bnd = "s3_logs", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cloudwatch_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logs_config__cloudwatch_logs)
               v_cloudwatch_logs
           in
           let bnd = "cloudwatch_logs", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : logs_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs_config

[@@@deriving.end]

type secondary_artifacts = {
  artifact_identifier : string prop;
  bucket_owner_access : string prop option; [@option]
  encryption_disabled : bool prop option; [@option]
  location : string prop option; [@option]
  name : string prop option; [@option]
  namespace_type : string prop option; [@option]
  override_artifact_name : bool prop option; [@option]
  packaging : string prop option; [@option]
  path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_artifacts) -> ()

let yojson_of_secondary_artifacts =
  (function
   | {
       artifact_identifier = v_artifact_identifier;
       bucket_owner_access = v_bucket_owner_access;
       encryption_disabled = v_encryption_disabled;
       location = v_location;
       name = v_name;
       namespace_type = v_namespace_type;
       override_artifact_name = v_override_artifact_name;
       packaging = v_packaging;
       path = v_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_packaging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "packaging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_override_artifact_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "override_artifact_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespace_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_encryption_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encryption_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_owner_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_owner_access", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_artifact_identifier
         in
         ("artifact_identifier", arg) :: bnds
       in
       `Assoc bnds
    : secondary_artifacts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_artifacts

[@@@deriving.end]

type secondary_source_version = {
  source_identifier : string prop;
  source_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_source_version) -> ()

let yojson_of_secondary_source_version =
  (function
   | {
       source_identifier = v_source_identifier;
       source_version = v_source_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_version
         in
         ("source_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_identifier
         in
         ("source_identifier", arg) :: bnds
       in
       `Assoc bnds
    : secondary_source_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_source_version

[@@@deriving.end]

type secondary_sources__build_status_config = {
  context : string prop option; [@option]
  target_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_sources__build_status_config) -> ()

let yojson_of_secondary_sources__build_status_config =
  (function
   | { context = v_context; target_url = v_target_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "context", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : secondary_sources__build_status_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_sources__build_status_config

[@@@deriving.end]

type secondary_sources__git_submodules_config = {
  fetch_submodules : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_sources__git_submodules_config) -> ()

let yojson_of_secondary_sources__git_submodules_config =
  (function
   | { fetch_submodules = v_fetch_submodules } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_fetch_submodules
         in
         ("fetch_submodules", arg) :: bnds
       in
       `Assoc bnds
    : secondary_sources__git_submodules_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_sources__git_submodules_config

[@@@deriving.end]

type secondary_sources = {
  buildspec : string prop option; [@option]
  git_clone_depth : float prop option; [@option]
  insecure_ssl : bool prop option; [@option]
  location : string prop option; [@option]
  report_build_status : bool prop option; [@option]
  source_identifier : string prop;
  type_ : string prop; [@key "type"]
  build_status_config : secondary_sources__build_status_config list;
      [@default []] [@yojson_drop_default ( = )]
  git_submodules_config :
    secondary_sources__git_submodules_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_sources) -> ()

let yojson_of_secondary_sources =
  (function
   | {
       buildspec = v_buildspec;
       git_clone_depth = v_git_clone_depth;
       insecure_ssl = v_insecure_ssl;
       location = v_location;
       report_build_status = v_report_build_status;
       source_identifier = v_source_identifier;
       type_ = v_type_;
       build_status_config = v_build_status_config;
       git_submodules_config = v_git_submodules_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_git_submodules_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_secondary_sources__git_submodules_config)
               v_git_submodules_config
           in
           let bnd = "git_submodules_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_build_status_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_secondary_sources__build_status_config)
               v_build_status_config
           in
           let bnd = "build_status_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_identifier
         in
         ("source_identifier", arg) :: bnds
       in
       let bnds =
         match v_report_build_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "report_build_status", arg in
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
         match v_insecure_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "insecure_ssl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_git_clone_depth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "git_clone_depth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buildspec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "buildspec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : secondary_sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_sources

[@@@deriving.end]

type source__build_status_config = {
  context : string prop option; [@option]
  target_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__build_status_config) -> ()

let yojson_of_source__build_status_config =
  (function
   | { context = v_context; target_url = v_target_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "context", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source__build_status_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__build_status_config

[@@@deriving.end]

type source__git_submodules_config = { fetch_submodules : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : source__git_submodules_config) -> ()

let yojson_of_source__git_submodules_config =
  (function
   | { fetch_submodules = v_fetch_submodules } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_fetch_submodules
         in
         ("fetch_submodules", arg) :: bnds
       in
       `Assoc bnds
    : source__git_submodules_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__git_submodules_config

[@@@deriving.end]

type source = {
  buildspec : string prop option; [@option]
  git_clone_depth : float prop option; [@option]
  insecure_ssl : bool prop option; [@option]
  location : string prop option; [@option]
  report_build_status : bool prop option; [@option]
  type_ : string prop; [@key "type"]
  build_status_config : source__build_status_config list;
      [@default []] [@yojson_drop_default ( = )]
  git_submodules_config : source__git_submodules_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | {
       buildspec = v_buildspec;
       git_clone_depth = v_git_clone_depth;
       insecure_ssl = v_insecure_ssl;
       location = v_location;
       report_build_status = v_report_build_status;
       type_ = v_type_;
       build_status_config = v_build_status_config;
       git_submodules_config = v_git_submodules_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_git_submodules_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source__git_submodules_config)
               v_git_submodules_config
           in
           let bnd = "git_submodules_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_build_status_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source__build_status_config)
               v_build_status_config
           in
           let bnd = "build_status_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_report_build_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "report_build_status", arg in
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
         match v_insecure_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "insecure_ssl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_git_clone_depth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "git_clone_depth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buildspec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "buildspec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type vpc_config = {
  security_group_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  subnets : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnets = v_subnets;
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
         if [] = v_subnets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnets
           in
           let bnd = "subnets", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_security_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_group_ids
           in
           let bnd = "security_group_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

[@@@deriving.end]

type aws_codebuild_project = {
  badge_enabled : bool prop option; [@option]
  build_timeout : float prop option; [@option]
  concurrent_build_limit : float prop option; [@option]
  description : string prop option; [@option]
  encryption_key : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project_visibility : string prop option; [@option]
  queued_timeout : float prop option; [@option]
  resource_access_role : string prop option; [@option]
  service_role : string prop;
  source_version : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  artifacts : artifacts list;
      [@default []] [@yojson_drop_default ( = )]
  build_batch_config : build_batch_config list;
      [@default []] [@yojson_drop_default ( = )]
  cache : cache list; [@default []] [@yojson_drop_default ( = )]
  environment : environment list;
      [@default []] [@yojson_drop_default ( = )]
  file_system_locations : file_system_locations list;
      [@default []] [@yojson_drop_default ( = )]
  logs_config : logs_config list;
      [@default []] [@yojson_drop_default ( = )]
  secondary_artifacts : secondary_artifacts list;
      [@default []] [@yojson_drop_default ( = )]
  secondary_source_version : secondary_source_version list;
      [@default []] [@yojson_drop_default ( = )]
  secondary_sources : secondary_sources list;
      [@default []] [@yojson_drop_default ( = )]
  source : source list; [@default []] [@yojson_drop_default ( = )]
  vpc_config : vpc_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codebuild_project) -> ()

let yojson_of_aws_codebuild_project =
  (function
   | {
       badge_enabled = v_badge_enabled;
       build_timeout = v_build_timeout;
       concurrent_build_limit = v_concurrent_build_limit;
       description = v_description;
       encryption_key = v_encryption_key;
       id = v_id;
       name = v_name;
       project_visibility = v_project_visibility;
       queued_timeout = v_queued_timeout;
       resource_access_role = v_resource_access_role;
       service_role = v_service_role;
       source_version = v_source_version;
       tags = v_tags;
       tags_all = v_tags_all;
       artifacts = v_artifacts;
       build_batch_config = v_build_batch_config;
       cache = v_cache;
       environment = v_environment;
       file_system_locations = v_file_system_locations;
       logs_config = v_logs_config;
       secondary_artifacts = v_secondary_artifacts;
       secondary_source_version = v_secondary_source_version;
       secondary_sources = v_secondary_sources;
       source = v_source;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_vpc_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_config) v_vpc_config
           in
           let bnd = "vpc_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_source then bnds
         else
           let arg = (yojson_of_list yojson_of_source) v_source in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_secondary_sources then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secondary_sources)
               v_secondary_sources
           in
           let bnd = "secondary_sources", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_secondary_source_version then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secondary_source_version)
               v_secondary_source_version
           in
           let bnd = "secondary_source_version", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_secondary_artifacts then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secondary_artifacts)
               v_secondary_artifacts
           in
           let bnd = "secondary_artifacts", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_logs_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logs_config) v_logs_config
           in
           let bnd = "logs_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_file_system_locations then bnds
         else
           let arg =
             (yojson_of_list yojson_of_file_system_locations)
               v_file_system_locations
           in
           let bnd = "file_system_locations", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_environment then bnds
         else
           let arg =
             (yojson_of_list yojson_of_environment) v_environment
           in
           let bnd = "environment", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cache then bnds
         else
           let arg = (yojson_of_list yojson_of_cache) v_cache in
           let bnd = "cache", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_build_batch_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_build_batch_config)
               v_build_batch_config
           in
           let bnd = "build_batch_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_artifacts then bnds
         else
           let arg =
             (yojson_of_list yojson_of_artifacts) v_artifacts
           in
           let bnd = "artifacts", arg in
           bnd :: bnds
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
         match v_source_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_role in
         ("service_role", arg) :: bnds
       in
       let bnds =
         match v_resource_access_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_access_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_queued_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "queued_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_visibility", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_encryption_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_key", arg in
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
         match v_concurrent_build_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "concurrent_build_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "build_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_badge_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "badge_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codebuild_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codebuild_project

[@@@deriving.end]

let artifacts ?artifact_identifier ?bucket_owner_access
    ?encryption_disabled ?location ?name ?namespace_type
    ?override_artifact_name ?packaging ?path ~type_ () : artifacts =
  {
    artifact_identifier;
    bucket_owner_access;
    encryption_disabled;
    location;
    name;
    namespace_type;
    override_artifact_name;
    packaging;
    path;
    type_;
  }

let build_batch_config__restrictions ?compute_types_allowed
    ?maximum_builds_allowed () : build_batch_config__restrictions =
  { compute_types_allowed; maximum_builds_allowed }

let build_batch_config ?combine_artifacts ?timeout_in_mins
    ?(restrictions = []) ~service_role () : build_batch_config =
  { combine_artifacts; service_role; timeout_in_mins; restrictions }

let cache ?location ?modes ?type_ () : cache =
  { location; modes; type_ }

let environment__environment_variable ?type_ ~name ~value () :
    environment__environment_variable =
  { name; type_; value }

let environment__registry_credential ~credential ~credential_provider
    () : environment__registry_credential =
  { credential; credential_provider }

let environment ?certificate ?image_pull_credentials_type
    ?privileged_mode ?(environment_variable = [])
    ?(registry_credential = []) ~compute_type ~image ~type_ () :
    environment =
  {
    certificate;
    compute_type;
    image;
    image_pull_credentials_type;
    privileged_mode;
    type_;
    environment_variable;
    registry_credential;
  }

let file_system_locations ?identifier ?location ?mount_options
    ?mount_point ?type_ () : file_system_locations =
  { identifier; location; mount_options; mount_point; type_ }

let logs_config__cloudwatch_logs ?group_name ?status ?stream_name ()
    : logs_config__cloudwatch_logs =
  { group_name; status; stream_name }

let logs_config__s3_logs ?bucket_owner_access ?encryption_disabled
    ?location ?status () : logs_config__s3_logs =
  { bucket_owner_access; encryption_disabled; location; status }

let logs_config ?(cloudwatch_logs = []) ?(s3_logs = []) () :
    logs_config =
  { cloudwatch_logs; s3_logs }

let secondary_artifacts ?bucket_owner_access ?encryption_disabled
    ?location ?name ?namespace_type ?override_artifact_name
    ?packaging ?path ~artifact_identifier ~type_ () :
    secondary_artifacts =
  {
    artifact_identifier;
    bucket_owner_access;
    encryption_disabled;
    location;
    name;
    namespace_type;
    override_artifact_name;
    packaging;
    path;
    type_;
  }

let secondary_source_version ~source_identifier ~source_version () :
    secondary_source_version =
  { source_identifier; source_version }

let secondary_sources__build_status_config ?context ?target_url () :
    secondary_sources__build_status_config =
  { context; target_url }

let secondary_sources__git_submodules_config ~fetch_submodules () :
    secondary_sources__git_submodules_config =
  { fetch_submodules }

let secondary_sources ?buildspec ?git_clone_depth ?insecure_ssl
    ?location ?report_build_status ?(build_status_config = [])
    ?(git_submodules_config = []) ~source_identifier ~type_ () :
    secondary_sources =
  {
    buildspec;
    git_clone_depth;
    insecure_ssl;
    location;
    report_build_status;
    source_identifier;
    type_;
    build_status_config;
    git_submodules_config;
  }

let source__build_status_config ?context ?target_url () :
    source__build_status_config =
  { context; target_url }

let source__git_submodules_config ~fetch_submodules () :
    source__git_submodules_config =
  { fetch_submodules }

let source ?buildspec ?git_clone_depth ?insecure_ssl ?location
    ?report_build_status ?(build_status_config = [])
    ?(git_submodules_config = []) ~type_ () : source =
  {
    buildspec;
    git_clone_depth;
    insecure_ssl;
    location;
    report_build_status;
    type_;
    build_status_config;
    git_submodules_config;
  }

let vpc_config ~security_group_ids ~subnets ~vpc_id () : vpc_config =
  { security_group_ids; subnets; vpc_id }

let aws_codebuild_project ?badge_enabled ?build_timeout
    ?concurrent_build_limit ?description ?encryption_key ?id
    ?project_visibility ?queued_timeout ?resource_access_role
    ?source_version ?tags ?tags_all ?(build_batch_config = [])
    ?(cache = []) ?(logs_config = []) ?(vpc_config = []) ~name
    ~service_role ~artifacts ~environment ~file_system_locations
    ~secondary_artifacts ~secondary_source_version ~secondary_sources
    ~source () : aws_codebuild_project =
  {
    badge_enabled;
    build_timeout;
    concurrent_build_limit;
    description;
    encryption_key;
    id;
    name;
    project_visibility;
    queued_timeout;
    resource_access_role;
    service_role;
    source_version;
    tags;
    tags_all;
    artifacts;
    build_batch_config;
    cache;
    environment;
    file_system_locations;
    logs_config;
    secondary_artifacts;
    secondary_source_version;
    secondary_sources;
    source;
    vpc_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  badge_enabled : bool prop;
  badge_url : string prop;
  build_timeout : float prop;
  concurrent_build_limit : float prop;
  description : string prop;
  encryption_key : string prop;
  id : string prop;
  name : string prop;
  project_visibility : string prop;
  public_project_alias : string prop;
  queued_timeout : float prop;
  resource_access_role : string prop;
  service_role : string prop;
  source_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?badge_enabled ?build_timeout ?concurrent_build_limit
    ?description ?encryption_key ?id ?project_visibility
    ?queued_timeout ?resource_access_role ?source_version ?tags
    ?tags_all ?(build_batch_config = []) ?(cache = [])
    ?(logs_config = []) ?(vpc_config = []) ~name ~service_role
    ~artifacts ~environment ~file_system_locations
    ~secondary_artifacts ~secondary_source_version ~secondary_sources
    ~source __id =
  let __type = "aws_codebuild_project" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       badge_enabled = Prop.computed __type __id "badge_enabled";
       badge_url = Prop.computed __type __id "badge_url";
       build_timeout = Prop.computed __type __id "build_timeout";
       concurrent_build_limit =
         Prop.computed __type __id "concurrent_build_limit";
       description = Prop.computed __type __id "description";
       encryption_key = Prop.computed __type __id "encryption_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project_visibility =
         Prop.computed __type __id "project_visibility";
       public_project_alias =
         Prop.computed __type __id "public_project_alias";
       queued_timeout = Prop.computed __type __id "queued_timeout";
       resource_access_role =
         Prop.computed __type __id "resource_access_role";
       service_role = Prop.computed __type __id "service_role";
       source_version = Prop.computed __type __id "source_version";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codebuild_project
        (aws_codebuild_project ?badge_enabled ?build_timeout
           ?concurrent_build_limit ?description ?encryption_key ?id
           ?project_visibility ?queued_timeout ?resource_access_role
           ?source_version ?tags ?tags_all ~build_batch_config ~cache
           ~logs_config ~vpc_config ~name ~service_role ~artifacts
           ~environment ~file_system_locations ~secondary_artifacts
           ~secondary_source_version ~secondary_sources ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?badge_enabled ?build_timeout
    ?concurrent_build_limit ?description ?encryption_key ?id
    ?project_visibility ?queued_timeout ?resource_access_role
    ?source_version ?tags ?tags_all ?(build_batch_config = [])
    ?(cache = []) ?(logs_config = []) ?(vpc_config = []) ~name
    ~service_role ~artifacts ~environment ~file_system_locations
    ~secondary_artifacts ~secondary_source_version ~secondary_sources
    ~source __id =
  let (r : _ Tf_core.resource) =
    make ?badge_enabled ?build_timeout ?concurrent_build_limit
      ?description ?encryption_key ?id ?project_visibility
      ?queued_timeout ?resource_access_role ?source_version ?tags
      ?tags_all ~build_batch_config ~cache ~logs_config ~vpc_config
      ~name ~service_role ~artifacts ~environment
      ~file_system_locations ~secondary_artifacts
      ~secondary_source_version ~secondary_sources ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
