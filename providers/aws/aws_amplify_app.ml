(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_branch_creation_config = {
  basic_auth_credentials : string prop option; [@option]
  build_spec : string prop option; [@option]
  enable_auto_build : bool prop option; [@option]
  enable_basic_auth : bool prop option; [@option]
  enable_performance_mode : bool prop option; [@option]
  enable_pull_request_preview : bool prop option; [@option]
  environment_variables : (string * string prop) list option;
      [@option]
  framework : string prop option; [@option]
  pull_request_environment_name : string prop option; [@option]
  stage : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_branch_creation_config) -> ()

let yojson_of_auto_branch_creation_config =
  (function
   | {
       basic_auth_credentials = v_basic_auth_credentials;
       build_spec = v_build_spec;
       enable_auto_build = v_enable_auto_build;
       enable_basic_auth = v_enable_basic_auth;
       enable_performance_mode = v_enable_performance_mode;
       enable_pull_request_preview = v_enable_pull_request_preview;
       environment_variables = v_environment_variables;
       framework = v_framework;
       pull_request_environment_name =
         v_pull_request_environment_name;
       stage = v_stage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_stage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pull_request_environment_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pull_request_environment_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_framework with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "framework", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_variables with
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
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_pull_request_preview with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_pull_request_preview", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_performance_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_performance_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_basic_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_basic_auth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_auto_build with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_auto_build", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_spec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_spec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_basic_auth_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "basic_auth_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_branch_creation_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_branch_creation_config

[@@@deriving.end]

type custom_rule = {
  condition : string prop option; [@option]
  source : string prop;
  status : string prop option; [@option]
  target : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_rule) -> ()

let yojson_of_custom_rule =
  (function
   | {
       condition = v_condition;
       source = v_source;
       status = v_status;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         match v_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "condition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_rule

[@@@deriving.end]

type production_branch = {
  branch_name : string prop;
  last_deploy_time : string prop;
  status : string prop;
  thumbnail_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : production_branch) -> ()

let yojson_of_production_branch =
  (function
   | {
       branch_name = v_branch_name;
       last_deploy_time = v_last_deploy_time;
       status = v_status;
       thumbnail_url = v_thumbnail_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thumbnail_url in
         ("thumbnail_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_deploy_time
         in
         ("last_deploy_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch_name in
         ("branch_name", arg) :: bnds
       in
       `Assoc bnds
    : production_branch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_production_branch

[@@@deriving.end]

type aws_amplify_app = {
  access_token : string prop option; [@option]
  auto_branch_creation_patterns : string prop list option; [@option]
  basic_auth_credentials : string prop option; [@option]
  build_spec : string prop option; [@option]
  custom_headers : string prop option; [@option]
  description : string prop option; [@option]
  enable_auto_branch_creation : bool prop option; [@option]
  enable_basic_auth : bool prop option; [@option]
  enable_branch_auto_build : bool prop option; [@option]
  enable_branch_auto_deletion : bool prop option; [@option]
  environment_variables : (string * string prop) list option;
      [@option]
  iam_service_role_arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  oauth_token : string prop option; [@option]
  platform : string prop option; [@option]
  repository : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  auto_branch_creation_config : auto_branch_creation_config list;
  custom_rule : custom_rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_amplify_app) -> ()

let yojson_of_aws_amplify_app =
  (function
   | {
       access_token = v_access_token;
       auto_branch_creation_patterns =
         v_auto_branch_creation_patterns;
       basic_auth_credentials = v_basic_auth_credentials;
       build_spec = v_build_spec;
       custom_headers = v_custom_headers;
       description = v_description;
       enable_auto_branch_creation = v_enable_auto_branch_creation;
       enable_basic_auth = v_enable_basic_auth;
       enable_branch_auto_build = v_enable_branch_auto_build;
       enable_branch_auto_deletion = v_enable_branch_auto_deletion;
       environment_variables = v_environment_variables;
       iam_service_role_arn = v_iam_service_role_arn;
       id = v_id;
       name = v_name;
       oauth_token = v_oauth_token;
       platform = v_platform;
       repository = v_repository;
       tags = v_tags;
       tags_all = v_tags_all;
       auto_branch_creation_config = v_auto_branch_creation_config;
       custom_rule = v_custom_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_rule v_custom_rule
         in
         ("custom_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auto_branch_creation_config
             v_auto_branch_creation_config
         in
         ("auto_branch_creation_config", arg) :: bnds
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
         match v_repository with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository", arg in
             bnd :: bnds
       in
       let bnds =
         match v_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform", arg in
             bnd :: bnds
       in
       let bnds =
         match v_oauth_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "oauth_token", arg in
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
         match v_iam_service_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_service_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_variables with
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
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_branch_auto_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_branch_auto_deletion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_branch_auto_build with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_branch_auto_build", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_basic_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_basic_auth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_auto_branch_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_auto_branch_creation", arg in
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
         match v_custom_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_build_spec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "build_spec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_basic_auth_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "basic_auth_credentials", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_branch_creation_patterns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "auto_branch_creation_patterns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_amplify_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_amplify_app

[@@@deriving.end]

let auto_branch_creation_config ?basic_auth_credentials ?build_spec
    ?enable_auto_build ?enable_basic_auth ?enable_performance_mode
    ?enable_pull_request_preview ?environment_variables ?framework
    ?pull_request_environment_name ?stage () :
    auto_branch_creation_config =
  {
    basic_auth_credentials;
    build_spec;
    enable_auto_build;
    enable_basic_auth;
    enable_performance_mode;
    enable_pull_request_preview;
    environment_variables;
    framework;
    pull_request_environment_name;
    stage;
  }

let custom_rule ?condition ?status ~source ~target () : custom_rule =
  { condition; source; status; target }

let aws_amplify_app ?access_token ?auto_branch_creation_patterns
    ?basic_auth_credentials ?build_spec ?custom_headers ?description
    ?enable_auto_branch_creation ?enable_basic_auth
    ?enable_branch_auto_build ?enable_branch_auto_deletion
    ?environment_variables ?iam_service_role_arn ?id ?oauth_token
    ?platform ?repository ?tags ?tags_all
    ?(auto_branch_creation_config = []) ?(custom_rule = []) ~name ()
    : aws_amplify_app =
  {
    access_token;
    auto_branch_creation_patterns;
    basic_auth_credentials;
    build_spec;
    custom_headers;
    description;
    enable_auto_branch_creation;
    enable_basic_auth;
    enable_branch_auto_build;
    enable_branch_auto_deletion;
    environment_variables;
    iam_service_role_arn;
    id;
    name;
    oauth_token;
    platform;
    repository;
    tags;
    tags_all;
    auto_branch_creation_config;
    custom_rule;
  }

type t = {
  tf_name : string;
  access_token : string prop;
  arn : string prop;
  auto_branch_creation_patterns : string list prop;
  basic_auth_credentials : string prop;
  build_spec : string prop;
  custom_headers : string prop;
  default_domain : string prop;
  description : string prop;
  enable_auto_branch_creation : bool prop;
  enable_basic_auth : bool prop;
  enable_branch_auto_build : bool prop;
  enable_branch_auto_deletion : bool prop;
  environment_variables : (string * string) list prop;
  iam_service_role_arn : string prop;
  id : string prop;
  name : string prop;
  oauth_token : string prop;
  platform : string prop;
  production_branch : production_branch list prop;
  repository : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?access_token ?auto_branch_creation_patterns
    ?basic_auth_credentials ?build_spec ?custom_headers ?description
    ?enable_auto_branch_creation ?enable_basic_auth
    ?enable_branch_auto_build ?enable_branch_auto_deletion
    ?environment_variables ?iam_service_role_arn ?id ?oauth_token
    ?platform ?repository ?tags ?tags_all
    ?(auto_branch_creation_config = []) ?(custom_rule = []) ~name
    __id =
  let __type = "aws_amplify_app" in
  let __attrs =
    ({
       tf_name = __id;
       access_token = Prop.computed __type __id "access_token";
       arn = Prop.computed __type __id "arn";
       auto_branch_creation_patterns =
         Prop.computed __type __id "auto_branch_creation_patterns";
       basic_auth_credentials =
         Prop.computed __type __id "basic_auth_credentials";
       build_spec = Prop.computed __type __id "build_spec";
       custom_headers = Prop.computed __type __id "custom_headers";
       default_domain = Prop.computed __type __id "default_domain";
       description = Prop.computed __type __id "description";
       enable_auto_branch_creation =
         Prop.computed __type __id "enable_auto_branch_creation";
       enable_basic_auth =
         Prop.computed __type __id "enable_basic_auth";
       enable_branch_auto_build =
         Prop.computed __type __id "enable_branch_auto_build";
       enable_branch_auto_deletion =
         Prop.computed __type __id "enable_branch_auto_deletion";
       environment_variables =
         Prop.computed __type __id "environment_variables";
       iam_service_role_arn =
         Prop.computed __type __id "iam_service_role_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       oauth_token = Prop.computed __type __id "oauth_token";
       platform = Prop.computed __type __id "platform";
       production_branch =
         Prop.computed __type __id "production_branch";
       repository = Prop.computed __type __id "repository";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_amplify_app
        (aws_amplify_app ?access_token ?auto_branch_creation_patterns
           ?basic_auth_credentials ?build_spec ?custom_headers
           ?description ?enable_auto_branch_creation
           ?enable_basic_auth ?enable_branch_auto_build
           ?enable_branch_auto_deletion ?environment_variables
           ?iam_service_role_arn ?id ?oauth_token ?platform
           ?repository ?tags ?tags_all ~auto_branch_creation_config
           ~custom_rule ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?access_token ?auto_branch_creation_patterns
    ?basic_auth_credentials ?build_spec ?custom_headers ?description
    ?enable_auto_branch_creation ?enable_basic_auth
    ?enable_branch_auto_build ?enable_branch_auto_deletion
    ?environment_variables ?iam_service_role_arn ?id ?oauth_token
    ?platform ?repository ?tags ?tags_all
    ?(auto_branch_creation_config = []) ?(custom_rule = []) ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?access_token ?auto_branch_creation_patterns
      ?basic_auth_credentials ?build_spec ?custom_headers
      ?description ?enable_auto_branch_creation ?enable_basic_auth
      ?enable_branch_auto_build ?enable_branch_auto_deletion
      ?environment_variables ?iam_service_role_arn ?id ?oauth_token
      ?platform ?repository ?tags ?tags_all
      ~auto_branch_creation_config ~custom_rule ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
