(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opensearch_package_association__timeouts
type aws_opensearch_package_association

val aws_opensearch_package_association :
  ?id:string prop ->
  ?timeouts:aws_opensearch_package_association__timeouts ->
  domain_name:string prop ->
  package_id:string prop ->
  string ->
  unit
