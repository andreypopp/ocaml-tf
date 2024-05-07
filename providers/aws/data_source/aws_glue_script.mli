(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dag_edge

val dag_edge :
  ?target_parameter:string prop ->
  source:string prop ->
  target:string prop ->
  unit ->
  dag_edge

type dag_node__args

val dag_node__args :
  ?param:bool prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  dag_node__args

type dag_node

val dag_node :
  ?line_number:float prop ->
  id:string prop ->
  node_type:string prop ->
  args:dag_node__args list ->
  unit ->
  dag_node

type aws_glue_script

val aws_glue_script :
  ?id:string prop ->
  ?language:string prop ->
  dag_edge:dag_edge list ->
  dag_node:dag_node list ->
  unit ->
  aws_glue_script

val yojson_of_aws_glue_script : aws_glue_script -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  language : string prop;
  python_script : string prop;
  scala_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?language:string prop ->
  dag_edge:dag_edge list ->
  dag_node:dag_node list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?language:string prop ->
  dag_edge:dag_edge list ->
  dag_node:dag_node list ->
  string ->
  t Tf_core.resource
