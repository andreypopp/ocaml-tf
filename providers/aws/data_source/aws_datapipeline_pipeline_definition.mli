(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameter_object__attribute = {
  key : string prop;  (** key *)
  string_value : string prop;  (** string_value *)
}

type parameter_object = {
  attribute : parameter_object__attribute list;
      [@default []] [@yojson_drop_default ( = )]
      (** attribute *)
  id : string prop;  (** id *)
}

type pipeline_object__field = {
  key : string prop;  (** key *)
  ref_value : string prop;  (** ref_value *)
  string_value : string prop;  (** string_value *)
}

type pipeline_object = {
  field : pipeline_object__field list;
      [@default []] [@yojson_drop_default ( = )]
      (** field *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type parameter_value

val parameter_value : unit -> parameter_value

type aws_datapipeline_pipeline_definition

val aws_datapipeline_pipeline_definition :
  ?id:string prop ->
  pipeline_id:string prop ->
  parameter_value:parameter_value list ->
  unit ->
  aws_datapipeline_pipeline_definition

val yojson_of_aws_datapipeline_pipeline_definition :
  aws_datapipeline_pipeline_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  parameter_object : parameter_object list prop;
  pipeline_id : string prop;
  pipeline_object : pipeline_object list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  pipeline_id:string prop ->
  parameter_value:parameter_value list ->
  string ->
  t

val make :
  ?id:string prop ->
  pipeline_id:string prop ->
  parameter_value:parameter_value list ->
  string ->
  t Tf_core.resource
