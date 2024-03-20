(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type size_constraints__field_to_match

val size_constraints__field_to_match :
  ?data:string prop ->
  type_:string prop ->
  unit ->
  size_constraints__field_to_match

type size_constraints

val size_constraints :
  comparison_operator:string prop ->
  size:float prop ->
  text_transformation:string prop ->
  field_to_match:size_constraints__field_to_match list ->
  unit ->
  size_constraints

type aws_waf_size_constraint_set

val aws_waf_size_constraint_set :
  ?id:string prop ->
  name:string prop ->
  size_constraints:size_constraints list ->
  unit ->
  aws_waf_size_constraint_set

val yojson_of_aws_waf_size_constraint_set :
  aws_waf_size_constraint_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  size_constraints:size_constraints list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  size_constraints:size_constraints list ->
  string ->
  t Tf_core.resource
