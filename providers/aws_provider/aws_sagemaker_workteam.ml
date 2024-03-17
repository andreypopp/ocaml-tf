(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_workteam__member_definition__cognito_member_definition = {
  client_id : string prop;  (** client_id *)
  user_group : string prop;  (** user_group *)
  user_pool : string prop;  (** user_pool *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workteam__member_definition__cognito_member_definition *)

type aws_sagemaker_workteam__member_definition__oidc_member_definition = {
  groups : string prop list;  (** groups *)
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
  notification_topic_arn : string prop option; [@option]
      (** notification_topic_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workteam__notification_configuration *)

type aws_sagemaker_workteam = {
  description : string prop;  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  workforce_name : string prop;  (** workforce_name *)
  workteam_name : string prop;  (** workteam_name *)
  member_definition : aws_sagemaker_workteam__member_definition list;
  notification_configuration :
    aws_sagemaker_workteam__notification_configuration list;
}
[@@deriving yojson_of]
(** aws_sagemaker_workteam *)

let aws_sagemaker_workteam ?id ?tags ?tags_all ~description
    ~workforce_name ~workteam_name ~member_definition
    ~notification_configuration __resource_id =
  let __resource_type = "aws_sagemaker_workteam" in
  let __resource =
    {
      description;
      id;
      tags;
      tags_all;
      workforce_name;
      workteam_name;
      member_definition;
      notification_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_workteam __resource);
  ()
