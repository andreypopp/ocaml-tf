(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_app__resource_spec = {
  instance_type : string option; [@option]  (** instance_type *)
  lifecycle_config_arn : string option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_app__resource_spec *)

type aws_sagemaker_app = {
  app_name : string;  (** app_name *)
  app_type : string;  (** app_type *)
  domain_id : string;  (** domain_id *)
  space_name : string option; [@option]  (** space_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_profile_name : string option; [@option]
      (** user_profile_name *)
  resource_spec : aws_sagemaker_app__resource_spec list;
}
[@@deriving yojson_of]
(** aws_sagemaker_app *)

let aws_sagemaker_app ?space_name ?tags ?user_profile_name ~app_name
    ~app_type ~domain_id ~resource_spec __resource_id =
  let __resource_type = "aws_sagemaker_app" in
  let __resource =
    {
      app_name;
      app_type;
      domain_id;
      space_name;
      tags;
      user_profile_name;
      resource_spec;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_app __resource);
  ()
