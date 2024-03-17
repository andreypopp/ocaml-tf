(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_imagebuilder_image__image_scanning_configuration__ecr_configuration = {
  container_tags : string list option; [@option]
      (** container_tags *)
  repository_name : string option; [@option]  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image__image_scanning_configuration__ecr_configuration *)

type aws_imagebuilder_image__image_scanning_configuration = {
  image_scanning_enabled : bool option; [@option]
      (** image_scanning_enabled *)
  ecr_configuration :
    aws_imagebuilder_image__image_scanning_configuration__ecr_configuration
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image__image_scanning_configuration *)

type aws_imagebuilder_image__image_tests_configuration = {
  image_tests_enabled : bool option; [@option]
      (** image_tests_enabled *)
  timeout_minutes : float option; [@option]  (** timeout_minutes *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image__image_tests_configuration *)

type aws_imagebuilder_image__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image__timeouts *)

type aws_imagebuilder_image__output_resources__containers = {
  image_uris : string list;  (** image_uris *)
  region : string;  (** region *)
}
[@@deriving yojson_of]

type aws_imagebuilder_image__output_resources__amis = {
  account_id : string;  (** account_id *)
  description : string;  (** description *)
  image : string;  (** image *)
  name : string;  (** name *)
  region : string;  (** region *)
}
[@@deriving yojson_of]

type aws_imagebuilder_image__output_resources = {
  amis : aws_imagebuilder_image__output_resources__amis list;
      (** amis *)
  containers :
    aws_imagebuilder_image__output_resources__containers list;
      (** containers *)
}
[@@deriving yojson_of]

type aws_imagebuilder_image = {
  container_recipe_arn : string option; [@option]
      (** container_recipe_arn *)
  distribution_configuration_arn : string option; [@option]
      (** distribution_configuration_arn *)
  enhanced_image_metadata_enabled : bool option; [@option]
      (** enhanced_image_metadata_enabled *)
  image_recipe_arn : string option; [@option]
      (** image_recipe_arn *)
  infrastructure_configuration_arn : string;
      (** infrastructure_configuration_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  image_scanning_configuration :
    aws_imagebuilder_image__image_scanning_configuration list;
  image_tests_configuration :
    aws_imagebuilder_image__image_tests_configuration list;
  timeouts : aws_imagebuilder_image__timeouts option;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image *)

let aws_imagebuilder_image ?container_recipe_arn
    ?distribution_configuration_arn ?enhanced_image_metadata_enabled
    ?image_recipe_arn ?tags ?timeouts
    ~infrastructure_configuration_arn ~image_scanning_configuration
    ~image_tests_configuration __resource_id =
  let __resource_type = "aws_imagebuilder_image" in
  let __resource =
    {
      container_recipe_arn;
      distribution_configuration_arn;
      enhanced_image_metadata_enabled;
      image_recipe_arn;
      infrastructure_configuration_arn;
      tags;
      image_scanning_configuration;
      image_tests_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_image __resource);
  ()
