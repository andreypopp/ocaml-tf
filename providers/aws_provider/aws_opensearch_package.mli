(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearch_package__package_source
type aws_opensearch_package

val aws_opensearch_package :
  ?id:string ->
  ?package_description:string ->
  package_name:string ->
  package_type:string ->
  package_source:aws_opensearch_package__package_source list ->
  string ->
  unit
