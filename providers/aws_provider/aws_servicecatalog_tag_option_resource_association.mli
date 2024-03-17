(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_tag_option_resource_association__timeouts
type aws_servicecatalog_tag_option_resource_association

type t = private {
  id : string prop;
  resource_arn : string prop;
  resource_created_time : string prop;
  resource_description : string prop;
  resource_id : string prop;
  resource_name : string prop;
  tag_option_id : string prop;
}

val aws_servicecatalog_tag_option_resource_association :
  ?id:string prop ->
  ?timeouts:
    aws_servicecatalog_tag_option_resource_association__timeouts ->
  resource_id:string prop ->
  tag_option_id:string prop ->
  string ->
  t
