(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type topic

val topic :
  ?description:string prop ->
  default_subscription_status:string prop ->
  display_name:string prop ->
  topic_name:string prop ->
  unit ->
  topic

type aws_sesv2_contact_list

val aws_sesv2_contact_list :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  contact_list_name:string prop ->
  topic:topic list ->
  unit ->
  aws_sesv2_contact_list

val yojson_of_aws_sesv2_contact_list : aws_sesv2_contact_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  contact_list_name : string prop;
  created_timestamp : string prop;
  description : string prop;
  id : string prop;
  last_updated_timestamp : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  contact_list_name:string prop ->
  topic:topic list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  contact_list_name:string prop ->
  topic:topic list ->
  string ->
  t Tf_core.resource
