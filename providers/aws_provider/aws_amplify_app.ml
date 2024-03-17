(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_amplify_app__auto_branch_creation_config = {
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
(** aws_amplify_app__auto_branch_creation_config *)

type aws_amplify_app__custom_rule = {
  condition : string prop option; [@option]  (** condition *)
  source : string prop;  (** source *)
  status : string prop option; [@option]  (** status *)
  target : string prop;  (** target *)
}
[@@deriving yojson_of]
(** aws_amplify_app__custom_rule *)

type aws_amplify_app__production_branch = {
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
  auto_branch_creation_config :
    aws_amplify_app__auto_branch_creation_config list;
  custom_rule : aws_amplify_app__custom_rule list;
}
[@@deriving yojson_of]
(** aws_amplify_app *)

let aws_amplify_app ?access_token ?auto_branch_creation_patterns
    ?basic_auth_credentials ?build_spec ?custom_headers ?description
    ?enable_auto_branch_creation ?enable_basic_auth
    ?enable_branch_auto_build ?enable_branch_auto_deletion
    ?environment_variables ?iam_service_role_arn ?id ?oauth_token
    ?platform ?repository ?tags ?tags_all ~name
    ~auto_branch_creation_config ~custom_rule __resource_id =
  let __resource_type = "aws_amplify_app" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_amplify_app __resource);
  ()
