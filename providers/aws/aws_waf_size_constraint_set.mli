(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_waf_size_constraint_set__size_constraints__field_to_match
type aws_waf_size_constraint_set__size_constraints
type aws_waf_size_constraint_set

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
}

val aws_waf_size_constraint_set :
  ?id:string prop ->
  name:string prop ->
  size_constraints:aws_waf_size_constraint_set__size_constraints list ->
  string ->
  t
