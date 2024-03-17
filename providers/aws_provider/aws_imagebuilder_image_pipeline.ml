(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_imagebuilder_image_pipeline__image_scanning_configuration__ecr_configuration = {
  container_tags : string list option; [@option]
      (** container_tags *)
  repository_name : string option; [@option]  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_pipeline__image_scanning_configuration__ecr_configuration *)

type aws_imagebuilder_image_pipeline__image_scanning_configuration = {
  image_scanning_enabled : bool option; [@option]
      (** image_scanning_enabled *)
  ecr_configuration :
    aws_imagebuilder_image_pipeline__image_scanning_configuration__ecr_configuration
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_pipeline__image_scanning_configuration *)

type aws_imagebuilder_image_pipeline__image_tests_configuration = {
  image_tests_enabled : bool option; [@option]
      (** image_tests_enabled *)
  timeout_minutes : float option; [@option]  (** timeout_minutes *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_pipeline__image_tests_configuration *)

type aws_imagebuilder_image_pipeline__schedule = {
  pipeline_execution_start_condition : string option; [@option]
      (** pipeline_execution_start_condition *)
  schedule_expression : string;  (** schedule_expression *)
  timezone : string option; [@option]  (** timezone *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_pipeline__schedule *)

type aws_imagebuilder_image_pipeline = {
  container_recipe_arn : string option; [@option]
      (** container_recipe_arn *)
  description : string option; [@option]  (** description *)
  distribution_configuration_arn : string option; [@option]
      (** distribution_configuration_arn *)
  enhanced_image_metadata_enabled : bool option; [@option]
      (** enhanced_image_metadata_enabled *)
  image_recipe_arn : string option; [@option]
      (** image_recipe_arn *)
  infrastructure_configuration_arn : string;
      (** infrastructure_configuration_arn *)
  name : string;  (** name *)
  status : string option; [@option]  (** status *)
  tags : (string * string) list option; [@option]  (** tags *)
  image_scanning_configuration :
    aws_imagebuilder_image_pipeline__image_scanning_configuration
    list;
  image_tests_configuration :
    aws_imagebuilder_image_pipeline__image_tests_configuration list;
  schedule : aws_imagebuilder_image_pipeline__schedule list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_pipeline *)

let aws_imagebuilder_image_pipeline ?container_recipe_arn
    ?description ?distribution_configuration_arn
    ?enhanced_image_metadata_enabled ?image_recipe_arn ?status ?tags
    ~infrastructure_configuration_arn ~name
    ~image_scanning_configuration ~image_tests_configuration
    ~schedule __resource_id =
  let __resource_type = "aws_imagebuilder_image_pipeline" in
  let __resource =
    {
      container_recipe_arn;
      description;
      distribution_configuration_arn;
      enhanced_image_metadata_enabled;
      image_recipe_arn;
      infrastructure_configuration_arn;
      name;
      status;
      tags;
      image_scanning_configuration;
      image_tests_configuration;
      schedule;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_image_pipeline __resource);
  ()
