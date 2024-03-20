(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_branch_creation_config = {
  basic_auth_credentials : string prop option; [@option]
      (** basic_auth_credentials *)
  build_spec : string prop option; [@option]  (** build_spec *)
  enable_auto_build : bool prop option; [@option]
      (** enable_auto_build *)
  enable_basic_auth : bool prop option; [@option]
      (** enable_basic_auth *)
  enable_performance_mode : bool prop option; [@option]
      (** enable_performance_mode *)
  enable_pull_request_preview : bool prop option; [@option]
      (** enable_pull_request_preview *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  framework : string prop option; [@option]  (** framework *)
  pull_request_environment_name : string prop option; [@option]
      (** pull_request_environment_name *)
  stage : string prop option; [@option]  (** stage *)
}
[@@deriving yojson_of]
(** auto_branch_creation_config *)

type custom_rule = {
  condition : string prop option; [@option]  (** condition *)
  source : string prop;  (** source *)
  status : string prop option; [@option]  (** status *)
  target : string prop;  (** target *)
}
[@@deriving yojson_of]
(** custom_rule *)

type production_branch = {
  branch_name : string prop;  (** branch_name *)
  last_deploy_time : string prop;  (** last_deploy_time *)
  status : string prop;  (** status *)
  thumbnail_url : string prop;  (** thumbnail_url *)
}
[@@deriving yojson_of]

type aws_amplify_app = {
  access_token : string prop option; [@option]  (** access_token *)
  auto_branch_creation_patterns : string prop list option; [@option]
      (** auto_branch_creation_patterns *)
  basic_auth_credentials : string prop option; [@option]
      (** basic_auth_credentials *)
  build_spec : string prop option; [@option]  (** build_spec *)
  custom_headers : string prop option; [@option]
      (** custom_headers *)
  description : string prop option; [@option]  (** description *)
  enable_auto_branch_creation : bool prop option; [@option]
      (** enable_auto_branch_creation *)
  enable_basic_auth : bool prop option; [@option]
      (** enable_basic_auth *)
  enable_branch_auto_build : bool prop option; [@option]
      (** enable_branch_auto_build *)
  enable_branch_auto_deletion : bool prop option; [@option]
      (** enable_branch_auto_deletion *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  iam_service_role_arn : string prop option; [@option]
      (** iam_service_role_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  oauth_token : string prop option; [@option]  (** oauth_token *)
  platform : string prop option; [@option]  (** platform *)
  repository : string prop option; [@option]  (** repository *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  auto_branch_creation_config : auto_branch_creation_config list;
  custom_rule : custom_rule list;
}
[@@deriving yojson_of]
(** aws_amplify_app *)

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
    ?platform ?repository ?tags ?tags_all ~name
    ~auto_branch_creation_config ~custom_rule () : aws_amplify_app =
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
    ?platform ?repository ?tags ?tags_all ~name
    ~auto_branch_creation_config ~custom_rule __id =
  let __type = "aws_amplify_app" in
  let __attrs =
    ({
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
           ?repository ?tags ?tags_all ~name
           ~auto_branch_creation_config ~custom_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?access_token ?auto_branch_creation_patterns
    ?basic_auth_credentials ?build_spec ?custom_headers ?description
    ?enable_auto_branch_creation ?enable_basic_auth
    ?enable_branch_auto_build ?enable_branch_auto_deletion
    ?environment_variables ?iam_service_role_arn ?id ?oauth_token
    ?platform ?repository ?tags ?tags_all ~name
    ~auto_branch_creation_config ~custom_rule __id =
  let (r : _ Tf_core.resource) =
    make ?access_token ?auto_branch_creation_patterns
      ?basic_auth_credentials ?build_spec ?custom_headers
      ?description ?enable_auto_branch_creation ?enable_basic_auth
      ?enable_branch_auto_build ?enable_branch_auto_deletion
      ?environment_variables ?iam_service_role_arn ?id ?oauth_token
      ?platform ?repository ?tags ?tags_all ~name
      ~auto_branch_creation_config ~custom_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
