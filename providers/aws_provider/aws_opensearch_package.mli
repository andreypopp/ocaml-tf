(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearch_package__package_source
type aws_opensearch_package

val aws_opensearch_package :
  ?id:string prop ->
  ?package_description:string prop ->
  package_name:string prop ->
  package_type:string prop ->
  package_source:aws_opensearch_package__package_source list ->
  string ->
  unit
