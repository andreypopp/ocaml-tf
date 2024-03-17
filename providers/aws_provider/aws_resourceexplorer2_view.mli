(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_resourceexplorer2_view__filters
type aws_resourceexplorer2_view__included_property
type aws_resourceexplorer2_view

val aws_resourceexplorer2_view :
  ?default_view:bool prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  filters:aws_resourceexplorer2_view__filters list ->
  included_property:
    aws_resourceexplorer2_view__included_property list ->
  string ->
  unit
