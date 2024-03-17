(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_imagebuilder_image_pipeline__image_scanning_configuration__ecr_configuration = {
  container_tags : string prop list option; [@option]
      (** container_tags *)
  repository_name : string prop option; [@option]
      (** repository_name *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_pipeline__image_scanning_configuration__ecr_configuration *)

type aws_imagebuilder_image_pipeline__image_scanning_configuration = {
  image_scanning_enabled : bool prop option; [@option]
      (** image_scanning_enabled *)
  ecr_configuration :
    aws_imagebuilder_image_pipeline__image_scanning_configuration__ecr_configuration
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_pipeline__image_scanning_configuration *)

type aws_imagebuilder_image_pipeline__image_tests_configuration = {
  image_tests_enabled : bool prop option; [@option]
      (** image_tests_enabled *)
  timeout_minutes : float prop option; [@option]
      (** timeout_minutes *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_pipeline__image_tests_configuration *)

type aws_imagebuilder_image_pipeline__schedule = {
  pipeline_execution_start_condition : string prop option; [@option]
      (** pipeline_execution_start_condition *)
  schedule_expression : string prop;  (** schedule_expression *)
  timezone : string prop option; [@option]  (** timezone *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_pipeline__schedule *)

type aws_imagebuilder_image_pipeline = {
  container_recipe_arn : string prop option; [@option]
      (** container_recipe_arn *)
  description : string prop option; [@option]  (** description *)
  distribution_configuration_arn : string prop option; [@option]
      (** distribution_configuration_arn *)
  enhanced_image_metadata_enabled : bool prop option; [@option]
      (** enhanced_image_metadata_enabled *)
  id : string prop option; [@option]  (** id *)
  image_recipe_arn : string prop option; [@option]
      (** image_recipe_arn *)
  infrastructure_configuration_arn : string prop;
      (** infrastructure_configuration_arn *)
  name : string prop;  (** name *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
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
    ?enhanced_image_metadata_enabled ?id ?image_recipe_arn ?status
    ?tags ?tags_all ~infrastructure_configuration_arn ~name
    ~image_scanning_configuration ~image_tests_configuration
    ~schedule __resource_id =
  let __resource_type = "aws_imagebuilder_image_pipeline" in
  let __resource =
    {
      container_recipe_arn;
      description;
      distribution_configuration_arn;
      enhanced_image_metadata_enabled;
      id;
      image_recipe_arn;
      infrastructure_configuration_arn;
      name;
      status;
      tags;
      tags_all;
      image_scanning_configuration;
      image_tests_configuration;
      schedule;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_image_pipeline __resource);
  ()
