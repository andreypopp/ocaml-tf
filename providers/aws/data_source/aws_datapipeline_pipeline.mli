(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_datapipeline_pipeline

val aws_datapipeline_pipeline :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  pipeline_id:string prop ->
  unit ->
  aws_datapipeline_pipeline

val yojson_of_aws_datapipeline_pipeline :
  aws_datapipeline_pipeline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  pipeline_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  pipeline_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  pipeline_id:string prop ->
  string ->
  t Tf_core.resource
