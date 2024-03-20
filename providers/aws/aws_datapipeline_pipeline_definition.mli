(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameter_object__attribute

val parameter_object__attribute :
  key:string prop ->
  string_value:string prop ->
  unit ->
  parameter_object__attribute

type parameter_object

val parameter_object :
  id:string prop ->
  attribute:parameter_object__attribute list ->
  unit ->
  parameter_object

type parameter_value

val parameter_value :
  id:string prop ->
  string_value:string prop ->
  unit ->
  parameter_value

type pipeline_object__field

val pipeline_object__field :
  ?ref_value:string prop ->
  ?string_value:string prop ->
  key:string prop ->
  unit ->
  pipeline_object__field

type pipeline_object

val pipeline_object :
  id:string prop ->
  name:string prop ->
  field:pipeline_object__field list ->
  unit ->
  pipeline_object

type aws_datapipeline_pipeline_definition

val aws_datapipeline_pipeline_definition :
  ?id:string prop ->
  pipeline_id:string prop ->
  parameter_object:parameter_object list ->
  parameter_value:parameter_value list ->
  pipeline_object:pipeline_object list ->
  unit ->
  aws_datapipeline_pipeline_definition

val yojson_of_aws_datapipeline_pipeline_definition :
  aws_datapipeline_pipeline_definition -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; pipeline_id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  pipeline_id:string prop ->
  parameter_object:parameter_object list ->
  parameter_value:parameter_value list ->
  pipeline_object:pipeline_object list ->
  string ->
  t

val make :
  ?id:string prop ->
  pipeline_id:string prop ->
  parameter_object:parameter_object list ->
  parameter_value:parameter_value list ->
  pipeline_object:pipeline_object list ->
  string ->
  t Tf_core.resource
