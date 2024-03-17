(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_imagebuilder_image__image_scanning_configuration__ecr_configuration = {
  container_tags : string prop list option; [@option]
      (** container_tags *)
  repository_name : string prop option; [@option]
      (** repository_name *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image__image_scanning_configuration__ecr_configuration *)

type aws_imagebuilder_image__image_scanning_configuration = {
  image_scanning_enabled : bool prop option; [@option]
      (** image_scanning_enabled *)
  ecr_configuration :
    aws_imagebuilder_image__image_scanning_configuration__ecr_configuration
    list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image__image_scanning_configuration *)

type aws_imagebuilder_image__image_tests_configuration = {
  image_tests_enabled : bool prop option; [@option]
      (** image_tests_enabled *)
  timeout_minutes : float prop option; [@option]
      (** timeout_minutes *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image__image_tests_configuration *)

type aws_imagebuilder_image__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_image__timeouts *)

type aws_imagebuilder_image__output_resources__containers = {
  image_uris : string prop list;  (** image_uris *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]

type aws_imagebuilder_image__output_resources__amis = {
  account_id : string prop;  (** account_id *)
  description : string prop;  (** description *)
  image : string prop;  (** image *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
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
  container_recipe_arn : string prop option; [@option]
      (** container_recipe_arn *)
  distribution_configuration_arn : string prop option; [@option]
      (** distribution_configuration_arn *)
  enhanced_image_metadata_enabled : bool prop option; [@option]
      (** enhanced_image_metadata_enabled *)
  id : string prop option; [@option]  (** id *)
  image_recipe_arn : string prop option; [@option]
      (** image_recipe_arn *)
  infrastructure_configuration_arn : string prop;
      (** infrastructure_configuration_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  image_scanning_configuration :
    aws_imagebuilder_image__image_scanning_configuration list;
  image_tests_configuration :
    aws_imagebuilder_image__image_tests_configuration list;
  timeouts : aws_imagebuilder_image__timeouts option;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image *)

type t = {
  arn : string prop;
  container_recipe_arn : string prop;
  date_created : string prop;
  distribution_configuration_arn : string prop;
  enhanced_image_metadata_enabled : bool prop;
  id : string prop;
  image_recipe_arn : string prop;
  infrastructure_configuration_arn : string prop;
  name : string prop;
  os_version : string prop;
  output_resources :
    aws_imagebuilder_image__output_resources list prop;
  platform : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let aws_imagebuilder_image ?container_recipe_arn
    ?distribution_configuration_arn ?enhanced_image_metadata_enabled
    ?id ?image_recipe_arn ?tags ?tags_all ?timeouts
    ~infrastructure_configuration_arn ~image_scanning_configuration
    ~image_tests_configuration __resource_id =
  let __resource_type = "aws_imagebuilder_image" in
  let __resource =
    ({
       container_recipe_arn;
       distribution_configuration_arn;
       enhanced_image_metadata_enabled;
       id;
       image_recipe_arn;
       infrastructure_configuration_arn;
       tags;
       tags_all;
       image_scanning_configuration;
       image_tests_configuration;
       timeouts;
     }
      : aws_imagebuilder_image)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_image __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       container_recipe_arn =
         Prop.computed __resource_type __resource_id
           "container_recipe_arn";
       date_created =
         Prop.computed __resource_type __resource_id "date_created";
       distribution_configuration_arn =
         Prop.computed __resource_type __resource_id
           "distribution_configuration_arn";
       enhanced_image_metadata_enabled =
         Prop.computed __resource_type __resource_id
           "enhanced_image_metadata_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       image_recipe_arn =
         Prop.computed __resource_type __resource_id
           "image_recipe_arn";
       infrastructure_configuration_arn =
         Prop.computed __resource_type __resource_id
           "infrastructure_configuration_arn";
       name = Prop.computed __resource_type __resource_id "name";
       os_version =
         Prop.computed __resource_type __resource_id "os_version";
       output_resources =
         Prop.computed __resource_type __resource_id
           "output_resources";
       platform =
         Prop.computed __resource_type __resource_id "platform";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
