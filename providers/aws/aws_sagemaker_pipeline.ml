(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?pipeline_definition
    ?pipeline_description ?role_arn ?tags ?tags_all
    ~pipeline_display_name ~pipeline_name ~parallelism_configuration
    ~pipeline_definition_s3_location __resource_id =
  let __resource_type = "aws_sagemaker_pipeline" in
  let __resource =
    aws_sagemaker_pipeline ?id ?pipeline_definition
      ?pipeline_description ?role_arn ?tags ?tags_all
      ~pipeline_display_name ~pipeline_name
      ~parallelism_configuration ~pipeline_definition_s3_location ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_pipeline __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       pipeline_definition =
         Prop.computed __resource_type __resource_id
           "pipeline_definition";
       pipeline_description =
         Prop.computed __resource_type __resource_id
           "pipeline_description";
       pipeline_display_name =
         Prop.computed __resource_type __resource_id
           "pipeline_display_name";
       pipeline_name =
         Prop.computed __resource_type __resource_id "pipeline_name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
