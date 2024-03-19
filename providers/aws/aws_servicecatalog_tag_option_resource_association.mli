(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type aws_servicecatalog_tag_option_resource_association

val aws_servicecatalog_tag_option_resource_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  resource_id:string prop ->
  tag_option_id:string prop ->
  unit ->
  aws_servicecatalog_tag_option_resource_association

val yojson_of_aws_servicecatalog_tag_option_resource_association :
  aws_servicecatalog_tag_option_resource_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  resource_arn : string prop;
  resource_created_time : string prop;
  resource_description : string prop;
  resource_id : string prop;
  resource_name : string prop;
  tag_option_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  resource_id:string prop ->
  tag_option_id:string prop ->
  string ->
  t
