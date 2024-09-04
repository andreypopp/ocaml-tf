(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type quick_connect_config__phone_config

val quick_connect_config__phone_config :
  phone_number:string prop ->
  unit ->
  quick_connect_config__phone_config

type quick_connect_config__queue_config

val quick_connect_config__queue_config :
  contact_flow_id:string prop ->
  queue_id:string prop ->
  unit ->
  quick_connect_config__queue_config

type quick_connect_config__user_config

val quick_connect_config__user_config :
  contact_flow_id:string prop ->
  user_id:string prop ->
  unit ->
  quick_connect_config__user_config

type quick_connect_config

val quick_connect_config :
  ?phone_config:quick_connect_config__phone_config list ->
  ?queue_config:quick_connect_config__queue_config list ->
  ?user_config:quick_connect_config__user_config list ->
  quick_connect_type:string prop ->
  unit ->
  quick_connect_config

type aws_connect_quick_connect

val aws_connect_quick_connect :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  instance_id:string prop ->
  name:string prop ->
  quick_connect_config:quick_connect_config list ->
  unit ->
  aws_connect_quick_connect

val yojson_of_aws_connect_quick_connect :
  aws_connect_quick_connect -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  quick_connect_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  instance_id:string prop ->
  name:string prop ->
  quick_connect_config:quick_connect_config list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  instance_id:string prop ->
  name:string prop ->
  quick_connect_config:quick_connect_config list ->
  string ->
  t Tf_core.resource
