(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_amplify_app__auto_branch_creation_config = {
  basic_auth_credentials : string option; [@option]
      (** basic_auth_credentials *)
  build_spec : string option; [@option]  (** build_spec *)
  enable_auto_build : bool option; [@option]
      (** enable_auto_build *)
  enable_basic_auth : bool option; [@option]
      (** enable_basic_auth *)
  enable_performance_mode : bool option; [@option]
      (** enable_performance_mode *)
  enable_pull_request_preview : bool option; [@option]
      (** enable_pull_request_preview *)
  environment_variables : (string * string) list option; [@option]
      (** environment_variables *)
  framework : string option; [@option]  (** framework *)
  pull_request_environment_name : string option; [@option]
      (** pull_request_environment_name *)
  stage : string option; [@option]  (** stage *)
}
[@@deriving yojson_of]
(** aws_amplify_app__auto_branch_creation_config *)

type aws_amplify_app__custom_rule = {
  condition : string option; [@option]  (** condition *)
  source : string;  (** source *)
  status : string option; [@option]  (** status *)
  target : string;  (** target *)
}
[@@deriving yojson_of]
(** aws_amplify_app__custom_rule *)

type aws_amplify_app__production_branch = {
  branch_name : string;  (** branch_name *)
  last_deploy_time : string;  (** last_deploy_time *)
  status : string;  (** status *)
  thumbnail_url : string;  (** thumbnail_url *)
}
[@@deriving yojson_of]

type aws_amplify_app = {
  access_token : string option; [@option]  (** access_token *)
  auto_branch_creation_patterns : string list option; [@option]
      (** auto_branch_creation_patterns *)
  basic_auth_credentials : string option; [@option]
      (** basic_auth_credentials *)
  build_spec : string option; [@option]  (** build_spec *)
  custom_headers : string option; [@option]  (** custom_headers *)
  description : string option; [@option]  (** description *)
  enable_auto_branch_creation : bool option; [@option]
      (** enable_auto_branch_creation *)
  enable_basic_auth : bool option; [@option]
      (** enable_basic_auth *)
  enable_branch_auto_build : bool option; [@option]
      (** enable_branch_auto_build *)
  enable_branch_auto_deletion : bool option; [@option]
      (** enable_branch_auto_deletion *)
  environment_variables : (string * string) list option; [@option]
      (** environment_variables *)
  iam_service_role_arn : string option; [@option]
      (** iam_service_role_arn *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  oauth_token : string option; [@option]  (** oauth_token *)
  platform : string option; [@option]  (** platform *)
  repository : string option; [@option]  (** repository *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
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
