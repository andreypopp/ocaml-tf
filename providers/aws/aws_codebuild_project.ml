(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type artifacts = {
  artifact_identifier : string prop option; [@option]
      (** artifact_identifier *)
  bucket_owner_access : string prop option; [@option]
      (** bucket_owner_access *)
  encryption_disabled : bool prop option; [@option]
      (** encryption_disabled *)
  location : string prop option; [@option]  (** location *)
  name : string prop option; [@option]  (** name *)
  namespace_type : string prop option; [@option]
      (** namespace_type *)
  override_artifact_name : bool prop option; [@option]
      (** override_artifact_name *)
  packaging : string prop option; [@option]  (** packaging *)
  path : string prop option; [@option]  (** path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** artifacts *)

type build_batch_config__restrictions = {
  compute_types_allowed : string prop list option; [@option]
      (** compute_types_allowed *)
  maximum_builds_allowed : float prop option; [@option]
      (** maximum_builds_allowed *)
}
[@@deriving yojson_of]
(** build_batch_config__restrictions *)

type build_batch_config = {
  combine_artifacts : bool prop option; [@option]
      (** combine_artifacts *)
  service_role : string prop;  (** service_role *)
  timeout_in_mins : float prop option; [@option]
      (** timeout_in_mins *)
  restrictions : build_batch_config__restrictions list;
}
[@@deriving yojson_of]
(** build_batch_config *)

type cache = {
  location : string prop option; [@option]  (** location *)
  modes : string prop list option; [@option]  (** modes *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** cache *)

type environment__environment_variable = {
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** environment__environment_variable *)

type environment__registry_credential = {
  credential : string prop;  (** credential *)
  credential_provider : string prop;  (** credential_provider *)
}
[@@deriving yojson_of]
(** environment__registry_credential *)

type environment = {
  certificate : string prop option; [@option]  (** certificate *)
  compute_type : string prop;  (** compute_type *)
  image : string prop;  (** image *)
  image_pull_credentials_type : string prop option; [@option]
      (** image_pull_credentials_type *)
  privileged_mode : bool prop option; [@option]
      (** privileged_mode *)
  type_ : string prop; [@key "type"]  (** type *)
  environment_variable : environment__environment_variable list;
  registry_credential : environment__registry_credential list;
}
[@@deriving yojson_of]
(** environment *)

type file_system_locations = {
  identifier : string prop option; [@option]  (** identifier *)
  location : string prop option; [@option]  (** location *)
  mount_options : string prop option; [@option]  (** mount_options *)
  mount_point : string prop option; [@option]  (** mount_point *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** file_system_locations *)

type logs_config__cloudwatch_logs = {
  group_name : string prop option; [@option]  (** group_name *)
  status : string prop option; [@option]  (** status *)
  stream_name : string prop option; [@option]  (** stream_name *)
}
[@@deriving yojson_of]
(** logs_config__cloudwatch_logs *)

type logs_config__s3_logs = {
  bucket_owner_access : string prop option; [@option]
      (** bucket_owner_access *)
  encryption_disabled : bool prop option; [@option]
      (** encryption_disabled *)
  location : string prop option; [@option]  (** location *)
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** logs_config__s3_logs *)

type logs_config = {
  cloudwatch_logs : logs_config__cloudwatch_logs list;
  s3_logs : logs_config__s3_logs list;
}
[@@deriving yojson_of]
(** logs_config *)

type secondary_artifacts = {
  artifact_identifier : string prop;  (** artifact_identifier *)
  bucket_owner_access : string prop option; [@option]
      (** bucket_owner_access *)
  encryption_disabled : bool prop option; [@option]
      (** encryption_disabled *)
  location : string prop option; [@option]  (** location *)
  name : string prop option; [@option]  (** name *)
  namespace_type : string prop option; [@option]
      (** namespace_type *)
  override_artifact_name : bool prop option; [@option]
      (** override_artifact_name *)
  packaging : string prop option; [@option]  (** packaging *)
  path : string prop option; [@option]  (** path *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** secondary_artifacts *)

type secondary_source_version = {
  source_identifier : string prop;  (** source_identifier *)
  source_version : string prop;  (** source_version *)
}
[@@deriving yojson_of]
(** secondary_source_version *)

type secondary_sources__build_status_config = {
  context : string prop option; [@option]  (** context *)
  target_url : string prop option; [@option]  (** target_url *)
}
[@@deriving yojson_of]
(** secondary_sources__build_status_config *)

type secondary_sources__git_submodules_config = {
  fetch_submodules : bool prop;  (** fetch_submodules *)
}
[@@deriving yojson_of]
(** secondary_sources__git_submodules_config *)

type secondary_sources = {
  buildspec : string prop option; [@option]  (** buildspec *)
  git_clone_depth : float prop option; [@option]
      (** git_clone_depth *)
  insecure_ssl : bool prop option; [@option]  (** insecure_ssl *)
  location : string prop option; [@option]  (** location *)
  report_build_status : bool prop option; [@option]
      (** report_build_status *)
  source_identifier : string prop;  (** source_identifier *)
  type_ : string prop; [@key "type"]  (** type *)
  build_status_config : secondary_sources__build_status_config list;
  git_submodules_config :
    secondary_sources__git_submodules_config list;
}
[@@deriving yojson_of]
(** secondary_sources *)

type source__build_status_config = {
  context : string prop option; [@option]  (** context *)
  target_url : string prop option; [@option]  (** target_url *)
}
[@@deriving yojson_of]
(** source__build_status_config *)

type source__git_submodules_config = {
  fetch_submodules : bool prop;  (** fetch_submodules *)
}
[@@deriving yojson_of]
(** source__git_submodules_config *)

type source = {
  buildspec : string prop option; [@option]  (** buildspec *)
  git_clone_depth : float prop option; [@option]
      (** git_clone_depth *)
  insecure_ssl : bool prop option; [@option]  (** insecure_ssl *)
  location : string prop option; [@option]  (** location *)
  report_build_status : bool prop option; [@option]
      (** report_build_status *)
  type_ : string prop; [@key "type"]  (** type *)
  build_status_config : source__build_status_config list;
  git_submodules_config : source__git_submodules_config list;
}
[@@deriving yojson_of]
(** source *)

type vpc_config = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnets : string prop list;  (** subnets *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** vpc_config *)

type aws_codebuild_project = {
  badge_enabled : bool prop option; [@option]  (** badge_enabled *)
  build_timeout : float prop option; [@option]  (** build_timeout *)
  concurrent_build_limit : float prop option; [@option]
      (** concurrent_build_limit *)
  description : string prop option; [@option]  (** description *)
  encryption_key : string prop option; [@option]
      (** encryption_key *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project_visibility : string prop option; [@option]
      (** project_visibility *)
  queued_timeout : float prop option; [@option]
      (** queued_timeout *)
  resource_access_role : string prop option; [@option]
      (** resource_access_role *)
  service_role : string prop;  (** service_role *)
  source_version : string prop option; [@option]
      (** source_version *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  artifacts : artifacts list;
  build_batch_config : build_batch_config list;
  cache : cache list;
  environment : environment list;
  file_system_locations : file_system_locations list;
  logs_config : logs_config list;
  secondary_artifacts : secondary_artifacts list;
  secondary_source_version : secondary_source_version list;
  secondary_sources : secondary_sources list;
  source : source list;
  vpc_config : vpc_config list;
}
[@@deriving yojson_of]
(** aws_codebuild_project *)

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
    ~service_role ~restrictions () : build_batch_config =
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
    ?privileged_mode ~compute_type ~image ~type_
    ~environment_variable ~registry_credential () : environment =
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

let logs_config ~cloudwatch_logs ~s3_logs () : logs_config =
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
    ?location ?report_build_status ~source_identifier ~type_
    ~build_status_config ~git_submodules_config () :
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
    ?report_build_status ~type_ ~build_status_config
    ~git_submodules_config () : source =
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
    ?source_version ?tags ?tags_all ~name ~service_role ~artifacts
    ~build_batch_config ~cache ~environment ~file_system_locations
    ~logs_config ~secondary_artifacts ~secondary_source_version
    ~secondary_sources ~source ~vpc_config () : aws_codebuild_project
    =
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

let register ?tf_module ?badge_enabled ?build_timeout
    ?concurrent_build_limit ?description ?encryption_key ?id
    ?project_visibility ?queued_timeout ?resource_access_role
    ?source_version ?tags ?tags_all ~name ~service_role ~artifacts
    ~build_batch_config ~cache ~environment ~file_system_locations
    ~logs_config ~secondary_artifacts ~secondary_source_version
    ~secondary_sources ~source ~vpc_config __resource_id =
  let __resource_type = "aws_codebuild_project" in
  let __resource =
    aws_codebuild_project ?badge_enabled ?build_timeout
      ?concurrent_build_limit ?description ?encryption_key ?id
      ?project_visibility ?queued_timeout ?resource_access_role
      ?source_version ?tags ?tags_all ~name ~service_role ~artifacts
      ~build_batch_config ~cache ~environment ~file_system_locations
      ~logs_config ~secondary_artifacts ~secondary_source_version
      ~secondary_sources ~source ~vpc_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codebuild_project __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       badge_enabled =
         Prop.computed __resource_type __resource_id "badge_enabled";
       badge_url =
         Prop.computed __resource_type __resource_id "badge_url";
       build_timeout =
         Prop.computed __resource_type __resource_id "build_timeout";
       concurrent_build_limit =
         Prop.computed __resource_type __resource_id
           "concurrent_build_limit";
       description =
         Prop.computed __resource_type __resource_id "description";
       encryption_key =
         Prop.computed __resource_type __resource_id "encryption_key";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project_visibility =
         Prop.computed __resource_type __resource_id
           "project_visibility";
       public_project_alias =
         Prop.computed __resource_type __resource_id
           "public_project_alias";
       queued_timeout =
         Prop.computed __resource_type __resource_id "queued_timeout";
       resource_access_role =
         Prop.computed __resource_type __resource_id
           "resource_access_role";
       service_role =
         Prop.computed __resource_type __resource_id "service_role";
       source_version =
         Prop.computed __resource_type __resource_id "source_version";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
