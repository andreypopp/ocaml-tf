(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type image_scanning_configuration__ecr_configuration = {
  container_tags : string prop list option; [@option]
      (** container_tags *)
  repository_name : string prop option; [@option]
      (** repository_name *)
}
[@@deriving yojson_of]
(** image_scanning_configuration__ecr_configuration *)

type image_scanning_configuration = {
  image_scanning_enabled : bool prop option; [@option]
      (** image_scanning_enabled *)
  ecr_configuration :
    image_scanning_configuration__ecr_configuration list;
}
[@@deriving yojson_of]
(** image_scanning_configuration *)

type image_tests_configuration = {
  image_tests_enabled : bool prop option; [@option]
      (** image_tests_enabled *)
  timeout_minutes : float prop option; [@option]
      (** timeout_minutes *)
}
[@@deriving yojson_of]
(** image_tests_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type output_resources__containers = {
  image_uris : string prop list;  (** image_uris *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]

type output_resources__amis = {
  account_id : string prop;  (** account_id *)
  description : string prop;  (** description *)
  image : string prop;  (** image *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]

type output_resources = {
  amis : output_resources__amis list;  (** amis *)
  containers : output_resources__containers list;  (** containers *)
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
  image_scanning_configuration : image_scanning_configuration list;
  image_tests_configuration : image_tests_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image *)

let image_scanning_configuration__ecr_configuration ?container_tags
    ?repository_name () :
    image_scanning_configuration__ecr_configuration =
  { container_tags; repository_name }

let image_scanning_configuration ?image_scanning_enabled
    ~ecr_configuration () : image_scanning_configuration =
  { image_scanning_enabled; ecr_configuration }

let image_tests_configuration ?image_tests_enabled ?timeout_minutes
    () : image_tests_configuration =
  { image_tests_enabled; timeout_minutes }

let timeouts ?create () : timeouts = { create }

let aws_imagebuilder_image ?container_recipe_arn
    ?distribution_configuration_arn ?enhanced_image_metadata_enabled
    ?id ?image_recipe_arn ?tags ?tags_all ?timeouts
    ~infrastructure_configuration_arn ~image_scanning_configuration
    ~image_tests_configuration () : aws_imagebuilder_image =
  {
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
  output_resources : output_resources list prop;
  platform : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let make ?container_recipe_arn ?distribution_configuration_arn
    ?enhanced_image_metadata_enabled ?id ?image_recipe_arn ?tags
    ?tags_all ?timeouts ~infrastructure_configuration_arn
    ~image_scanning_configuration ~image_tests_configuration __id =
  let __type = "aws_imagebuilder_image" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       container_recipe_arn =
         Prop.computed __type __id "container_recipe_arn";
       date_created = Prop.computed __type __id "date_created";
       distribution_configuration_arn =
         Prop.computed __type __id "distribution_configuration_arn";
       enhanced_image_metadata_enabled =
         Prop.computed __type __id "enhanced_image_metadata_enabled";
       id = Prop.computed __type __id "id";
       image_recipe_arn =
         Prop.computed __type __id "image_recipe_arn";
       infrastructure_configuration_arn =
         Prop.computed __type __id "infrastructure_configuration_arn";
       name = Prop.computed __type __id "name";
       os_version = Prop.computed __type __id "os_version";
       output_resources =
         Prop.computed __type __id "output_resources";
       platform = Prop.computed __type __id "platform";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_image
        (aws_imagebuilder_image ?container_recipe_arn
           ?distribution_configuration_arn
           ?enhanced_image_metadata_enabled ?id ?image_recipe_arn
           ?tags ?tags_all ?timeouts
           ~infrastructure_configuration_arn
           ~image_scanning_configuration ~image_tests_configuration
           ());
    attrs = __attrs;
  }

let register ?tf_module ?container_recipe_arn
    ?distribution_configuration_arn ?enhanced_image_metadata_enabled
    ?id ?image_recipe_arn ?tags ?tags_all ?timeouts
    ~infrastructure_configuration_arn ~image_scanning_configuration
    ~image_tests_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?container_recipe_arn ?distribution_configuration_arn
      ?enhanced_image_metadata_enabled ?id ?image_recipe_arn ?tags
      ?tags_all ?timeouts ~infrastructure_configuration_arn
      ~image_scanning_configuration ~image_tests_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
