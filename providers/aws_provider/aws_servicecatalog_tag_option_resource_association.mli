(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_tag_option_resource_association__timeouts
type aws_servicecatalog_tag_option_resource_association

val aws_servicecatalog_tag_option_resource_association :
  ?id:string prop ->
  ?timeouts:
    aws_servicecatalog_tag_option_resource_association__timeouts ->
  resource_id:string prop ->
  tag_option_id:string prop ->
  string ->
  unit
