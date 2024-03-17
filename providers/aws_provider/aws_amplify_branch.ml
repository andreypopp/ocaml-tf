(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_amplify_branch = {
  app_id : string;  (** app_id *)
  backend_environment_arn : string option; [@option]
      (** backend_environment_arn *)
  basic_auth_credentials : string option; [@option]
      (** basic_auth_credentials *)
  branch_name : string;  (** branch_name *)
  description : string option; [@option]  (** description *)
  display_name : string option; [@option]  (** display_name *)
  enable_auto_build : bool option; [@option]
      (** enable_auto_build *)
  enable_basic_auth : bool option; [@option]
      (** enable_basic_auth *)
  enable_notification : bool option; [@option]
      (** enable_notification *)
  enable_performance_mode : bool option; [@option]
      (** enable_performance_mode *)
  enable_pull_request_preview : bool option; [@option]
      (** enable_pull_request_preview *)
  environment_variables : (string * string) list option; [@option]
      (** environment_variables *)
  framework : string option; [@option]  (** framework *)
  id : string option; [@option]  (** id *)
  pull_request_environment_name : string option; [@option]
      (** pull_request_environment_name *)
  stage : string option; [@option]  (** stage *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  ttl : string option; [@option]  (** ttl *)
}
[@@deriving yojson_of]
(** aws_amplify_branch *)

let aws_amplify_branch ?backend_environment_arn
    ?basic_auth_credentials ?description ?display_name
    ?enable_auto_build ?enable_basic_auth ?enable_notification
    ?enable_performance_mode ?enable_pull_request_preview
    ?environment_variables ?framework ?id
    ?pull_request_environment_name ?stage ?tags ?tags_all ?ttl
    ~app_id ~branch_name __resource_id =
  let __resource_type = "aws_amplify_branch" in
  let __resource =
    {
      app_id;
      backend_environment_arn;
      basic_auth_credentials;
      branch_name;
      description;
      display_name;
      enable_auto_build;
      enable_basic_auth;
      enable_notification;
      enable_performance_mode;
      enable_pull_request_preview;
      environment_variables;
      framework;
      id;
      pull_request_environment_name;
      stage;
      tags;
      tags_all;
      ttl;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_amplify_branch __resource);
  ()
