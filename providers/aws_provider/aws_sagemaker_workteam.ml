(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_workteam__member_definition__cognito_member_definition = {
  client_id : string;  (** client_id *)
  user_group : string;  (** user_group *)
  user_pool : string;  (** user_pool *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workteam__member_definition__cognito_member_definition *)

type aws_sagemaker_workteam__member_definition__oidc_member_definition = {
  groups : string list;  (** groups *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workteam__member_definition__oidc_member_definition *)

type aws_sagemaker_workteam__member_definition = {
  cognito_member_definition :
    aws_sagemaker_workteam__member_definition__cognito_member_definition
    list;
  oidc_member_definition :
    aws_sagemaker_workteam__member_definition__oidc_member_definition
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_workteam__member_definition *)

type aws_sagemaker_workteam__notification_configuration = {
  notification_topic_arn : string option; [@option]
      (** notification_topic_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workteam__notification_configuration *)

type aws_sagemaker_workteam = {
  description : string;  (** description *)
  tags : (string * string) list option; [@option]  (** tags *)
  workforce_name : string;  (** workforce_name *)
  workteam_name : string;  (** workteam_name *)
  member_definition : aws_sagemaker_workteam__member_definition list;
  notification_configuration :
    aws_sagemaker_workteam__notification_configuration list;
}
[@@deriving yojson_of]
(** aws_sagemaker_workteam *)

let aws_sagemaker_workteam ?tags ~description ~workforce_name
    ~workteam_name ~member_definition ~notification_configuration
    __resource_id =
  let __resource_type = "aws_sagemaker_workteam" in
  let __resource =
    {
      description;
      tags;
      workforce_name;
      workteam_name;
      member_definition;
      notification_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_workteam __resource);
  ()
