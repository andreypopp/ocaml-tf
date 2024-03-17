(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_amplify_branch = {
  app_id : string prop;  (** app_id *)
  backend_environment_arn : string prop option; [@option]
      (** backend_environment_arn *)
  basic_auth_credentials : string prop option; [@option]
      (** basic_auth_credentials *)
  branch_name : string prop;  (** branch_name *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  enable_auto_build : bool prop option; [@option]
      (** enable_auto_build *)
  enable_basic_auth : bool prop option; [@option]
      (** enable_basic_auth *)
  enable_notification : bool prop option; [@option]
      (** enable_notification *)
  enable_performance_mode : bool prop option; [@option]
      (** enable_performance_mode *)
  enable_pull_request_preview : bool prop option; [@option]
      (** enable_pull_request_preview *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  framework : string prop option; [@option]  (** framework *)
  id : string prop option; [@option]  (** id *)
  pull_request_environment_name : string prop option; [@option]
      (** pull_request_environment_name *)
  stage : string prop option; [@option]  (** stage *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ttl : string prop option; [@option]  (** ttl *)
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
