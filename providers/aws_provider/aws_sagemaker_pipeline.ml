(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_pipeline__parallelism_configuration = {
  max_parallel_execution_steps : float prop;
      (** max_parallel_execution_steps *)
}
[@@deriving yojson_of]
(** aws_sagemaker_pipeline__parallelism_configuration *)

type aws_sagemaker_pipeline__pipeline_definition_s3_location = {
  bucket : string prop;  (** bucket *)
  object_key : string prop;  (** object_key *)
  version_id : string prop option; [@option]  (** version_id *)
}
[@@deriving yojson_of]
(** aws_sagemaker_pipeline__pipeline_definition_s3_location *)

type aws_sagemaker_pipeline = {
  id : string prop option; [@option]  (** id *)
  pipeline_definition : string prop option; [@option]
      (** pipeline_definition *)
  pipeline_description : string prop option; [@option]
      (** pipeline_description *)
  pipeline_display_name : string prop;  (** pipeline_display_name *)
  pipeline_name : string prop;  (** pipeline_name *)
  role_arn : string prop option; [@option]  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  parallelism_configuration :
    aws_sagemaker_pipeline__parallelism_configuration list;
  pipeline_definition_s3_location :
    aws_sagemaker_pipeline__pipeline_definition_s3_location list;
}
[@@deriving yojson_of]
(** aws_sagemaker_pipeline *)

let aws_sagemaker_pipeline ?id ?pipeline_definition
    ?pipeline_description ?role_arn ?tags ?tags_all
    ~pipeline_display_name ~pipeline_name ~parallelism_configuration
    ~pipeline_definition_s3_location __resource_id =
  let __resource_type = "aws_sagemaker_pipeline" in
  let __resource =
    {
      id;
      pipeline_definition;
      pipeline_description;
      pipeline_display_name;
      pipeline_name;
      role_arn;
      tags;
      tags_all;
      parallelism_configuration;
      pipeline_definition_s3_location;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_pipeline __resource);
  ()
