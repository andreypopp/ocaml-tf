(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datapipeline_pipeline_definition__parameter_object__attribute = {
  key : string prop;  (** key *)
  string_value : string prop;  (** string_value *)
}
[@@deriving yojson_of]
(** aws_datapipeline_pipeline_definition__parameter_object__attribute *)

type aws_datapipeline_pipeline_definition__parameter_object = {
  id : string prop;  (** id *)
  attribute :
    aws_datapipeline_pipeline_definition__parameter_object__attribute
    list;
}
[@@deriving yojson_of]
(** aws_datapipeline_pipeline_definition__parameter_object *)

type aws_datapipeline_pipeline_definition__parameter_value = {
  id : string prop;  (** id *)
  string_value : string prop;  (** string_value *)
}
[@@deriving yojson_of]
(** aws_datapipeline_pipeline_definition__parameter_value *)

type aws_datapipeline_pipeline_definition__pipeline_object__field = {
  key : string prop;  (** key *)
  ref_value : string prop option; [@option]  (** ref_value *)
  string_value : string prop option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** aws_datapipeline_pipeline_definition__pipeline_object__field *)

type aws_datapipeline_pipeline_definition__pipeline_object = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  field :
    aws_datapipeline_pipeline_definition__pipeline_object__field list;
}
[@@deriving yojson_of]
(** aws_datapipeline_pipeline_definition__pipeline_object *)

type aws_datapipeline_pipeline_definition = {
  id : string prop option; [@option]  (** id *)
  pipeline_id : string prop;  (** pipeline_id *)
  parameter_object :
    aws_datapipeline_pipeline_definition__parameter_object list;
  parameter_value :
    aws_datapipeline_pipeline_definition__parameter_value list;
  pipeline_object :
    aws_datapipeline_pipeline_definition__pipeline_object list;
}
[@@deriving yojson_of]
(** aws_datapipeline_pipeline_definition *)

let aws_datapipeline_pipeline_definition ?id ~pipeline_id
    ~parameter_object ~parameter_value ~pipeline_object __resource_id
    =
  let __resource_type = "aws_datapipeline_pipeline_definition" in
  let __resource =
    {
      id;
      pipeline_id;
      parameter_object;
      parameter_value;
      pipeline_object;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datapipeline_pipeline_definition __resource);
  ()
