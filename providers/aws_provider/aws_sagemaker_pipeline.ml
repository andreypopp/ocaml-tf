(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_pipeline__parallelism_configuration = {
  max_parallel_execution_steps : float;
      (** max_parallel_execution_steps *)
}
[@@deriving yojson_of]
(** aws_sagemaker_pipeline__parallelism_configuration *)

type aws_sagemaker_pipeline__pipeline_definition_s3_location = {
  bucket : string;  (** bucket *)
  object_key : string;  (** object_key *)
  version_id : string option; [@option]  (** version_id *)
}
[@@deriving yojson_of]
(** aws_sagemaker_pipeline__pipeline_definition_s3_location *)

type aws_sagemaker_pipeline = {
  pipeline_definition : string option; [@option]
      (** pipeline_definition *)
  pipeline_description : string option; [@option]
      (** pipeline_description *)
  pipeline_display_name : string;  (** pipeline_display_name *)
  pipeline_name : string;  (** pipeline_name *)
  role_arn : string option; [@option]  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  parallelism_configuration :
    aws_sagemaker_pipeline__parallelism_configuration list;
  pipeline_definition_s3_location :
    aws_sagemaker_pipeline__pipeline_definition_s3_location list;
}
[@@deriving yojson_of]
(** aws_sagemaker_pipeline *)

let aws_sagemaker_pipeline ?pipeline_definition ?pipeline_description
    ?role_arn ?tags ~pipeline_display_name ~pipeline_name
    ~parallelism_configuration ~pipeline_definition_s3_location
    __resource_id =
  let __resource_type = "aws_sagemaker_pipeline" in
  let __resource =
    {
      pipeline_definition;
      pipeline_description;
      pipeline_display_name;
      pipeline_name;
      role_arn;
      tags;
      parallelism_configuration;
      pipeline_definition_s3_location;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_pipeline __resource);
  ()
