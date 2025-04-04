(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type message_review_handler

val message_review_handler :
  ?fallback_result:string prop ->
  ?uri:string prop ->
  unit ->
  message_review_handler

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_ivschat_room

val aws_ivschat_room :
  ?id:string prop ->
  ?logging_configuration_identifiers:string prop list ->
  ?maximum_message_length:float prop ->
  ?maximum_message_rate_per_second:float prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?message_review_handler:message_review_handler list ->
  ?timeouts:timeouts ->
  unit ->
  aws_ivschat_room

val yojson_of_aws_ivschat_room : aws_ivschat_room -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  logging_configuration_identifiers : string list prop;
  maximum_message_length : float prop;
  maximum_message_rate_per_second : float prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?logging_configuration_identifiers:string prop list ->
  ?maximum_message_length:float prop ->
  ?maximum_message_rate_per_second:float prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?message_review_handler:message_review_handler list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?logging_configuration_identifiers:string prop list ->
  ?maximum_message_length:float prop ->
  ?maximum_message_rate_per_second:float prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?message_review_handler:message_review_handler list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
