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

type schedule = {
  pipeline_execution_start_condition : string prop option; [@option]
      (** pipeline_execution_start_condition *)
  schedule_expression : string prop;  (** schedule_expression *)
  timezone : string prop option; [@option]  (** timezone *)
}
[@@deriving yojson_of]
(** schedule *)

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
  image_scanning_configuration : image_scanning_configuration list;
  image_tests_configuration : image_tests_configuration list;
  schedule : schedule list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_image_pipeline *)

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

let schedule ?pipeline_execution_start_condition ?timezone
    ~schedule_expression () : schedule =
  {
    pipeline_execution_start_condition;
    schedule_expression;
    timezone;
  }

let aws_imagebuilder_image_pipeline ?container_recipe_arn
    ?description ?distribution_configuration_arn
    ?enhanced_image_metadata_enabled ?id ?image_recipe_arn ?status
    ?tags ?tags_all ~infrastructure_configuration_arn ~name
    ~image_scanning_configuration ~image_tests_configuration
    ~schedule () : aws_imagebuilder_image_pipeline =
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

type t = {
  arn : string prop;
  container_recipe_arn : string prop;
  date_created : string prop;
  date_last_run : string prop;
  date_next_run : string prop;
  date_updated : string prop;
  description : string prop;
  distribution_configuration_arn : string prop;
  enhanced_image_metadata_enabled : bool prop;
  id : string prop;
  image_recipe_arn : string prop;
  infrastructure_configuration_arn : string prop;
  name : string prop;
  platform : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?container_recipe_arn ?description
    ?distribution_configuration_arn ?enhanced_image_metadata_enabled
    ?id ?image_recipe_arn ?status ?tags ?tags_all
    ~infrastructure_configuration_arn ~name
    ~image_scanning_configuration ~image_tests_configuration
    ~schedule __id =
  let __type = "aws_imagebuilder_image_pipeline" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       container_recipe_arn =
         Prop.computed __type __id "container_recipe_arn";
       date_created = Prop.computed __type __id "date_created";
       date_last_run = Prop.computed __type __id "date_last_run";
       date_next_run = Prop.computed __type __id "date_next_run";
       date_updated = Prop.computed __type __id "date_updated";
       description = Prop.computed __type __id "description";
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
       platform = Prop.computed __type __id "platform";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_image_pipeline
        (aws_imagebuilder_image_pipeline ?container_recipe_arn
           ?description ?distribution_configuration_arn
           ?enhanced_image_metadata_enabled ?id ?image_recipe_arn
           ?status ?tags ?tags_all ~infrastructure_configuration_arn
           ~name ~image_scanning_configuration
           ~image_tests_configuration ~schedule ());
    attrs = __attrs;
  }

let register ?tf_module ?container_recipe_arn ?description
    ?distribution_configuration_arn ?enhanced_image_metadata_enabled
    ?id ?image_recipe_arn ?status ?tags ?tags_all
    ~infrastructure_configuration_arn ~name
    ~image_scanning_configuration ~image_tests_configuration
    ~schedule __id =
  let (r : _ Tf_core.resource) =
    make ?container_recipe_arn ?description
      ?distribution_configuration_arn
      ?enhanced_image_metadata_enabled ?id ?image_recipe_arn ?status
      ?tags ?tags_all ~infrastructure_configuration_arn ~name
      ~image_scanning_configuration ~image_tests_configuration
      ~schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
