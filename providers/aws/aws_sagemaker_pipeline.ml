(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parallelism_configuration = {
  max_parallel_execution_steps : float prop;
      (** max_parallel_execution_steps *)
}
[@@deriving yojson_of]
(** parallelism_configuration *)

type pipeline_definition_s3_location = {
  bucket : string prop;  (** bucket *)
  object_key : string prop;  (** object_key *)
  version_id : string prop option; [@option]  (** version_id *)
}
[@@deriving yojson_of]
(** pipeline_definition_s3_location *)

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
  parallelism_configuration : parallelism_configuration list;
  pipeline_definition_s3_location :
    pipeline_definition_s3_location list;
}
[@@deriving yojson_of]
(** aws_sagemaker_pipeline *)

let parallelism_configuration ~max_parallel_execution_steps () :
    parallelism_configuration =
  { max_parallel_execution_steps }

let pipeline_definition_s3_location ?version_id ~bucket ~object_key
    () : pipeline_definition_s3_location =
  { bucket; object_key; version_id }

let aws_sagemaker_pipeline ?id ?pipeline_definition
    ?pipeline_description ?role_arn ?tags ?tags_all
    ~pipeline_display_name ~pipeline_name ~parallelism_configuration
    ~pipeline_definition_s3_location () : aws_sagemaker_pipeline =
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

type t = {
  arn : string prop;
  id : string prop;
  pipeline_definition : string prop;
  pipeline_description : string prop;
  pipeline_display_name : string prop;
  pipeline_name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?pipeline_definition ?pipeline_description ?role_arn
    ?tags ?tags_all ~pipeline_display_name ~pipeline_name
    ~parallelism_configuration ~pipeline_definition_s3_location __id
    =
  let __type = "aws_sagemaker_pipeline" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       pipeline_definition =
         Prop.computed __type __id "pipeline_definition";
       pipeline_description =
         Prop.computed __type __id "pipeline_description";
       pipeline_display_name =
         Prop.computed __type __id "pipeline_display_name";
       pipeline_name = Prop.computed __type __id "pipeline_name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_pipeline
        (aws_sagemaker_pipeline ?id ?pipeline_definition
           ?pipeline_description ?role_arn ?tags ?tags_all
           ~pipeline_display_name ~pipeline_name
           ~parallelism_configuration
           ~pipeline_definition_s3_location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?pipeline_definition
    ?pipeline_description ?role_arn ?tags ?tags_all
    ~pipeline_display_name ~pipeline_name ~parallelism_configuration
    ~pipeline_definition_s3_location __id =
  let (r : _ Tf_core.resource) =
    make ?id ?pipeline_definition ?pipeline_description ?role_arn
      ?tags ?tags_all ~pipeline_display_name ~pipeline_name
      ~parallelism_configuration ~pipeline_definition_s3_location
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
