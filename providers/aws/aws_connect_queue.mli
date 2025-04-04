(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type outbound_caller_config

val outbound_caller_config :
  ?outbound_caller_id_name:string prop ->
  ?outbound_caller_id_number_id:string prop ->
  ?outbound_flow_id:string prop ->
  unit ->
  outbound_caller_config

type aws_connect_queue

val aws_connect_queue :
  ?description:string prop ->
  ?id:string prop ->
  ?max_contacts:float prop ->
  ?quick_connect_ids:string prop list ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?outbound_caller_config:outbound_caller_config list ->
  hours_of_operation_id:string prop ->
  instance_id:string prop ->
  name:string prop ->
  unit ->
  aws_connect_queue

val yojson_of_aws_connect_queue : aws_connect_queue -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  hours_of_operation_id : string prop;
  id : string prop;
  instance_id : string prop;
  max_contacts : float prop;
  name : string prop;
  queue_id : string prop;
  quick_connect_ids : string list prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?max_contacts:float prop ->
  ?quick_connect_ids:string prop list ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?outbound_caller_config:outbound_caller_config list ->
  hours_of_operation_id:string prop ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?max_contacts:float prop ->
  ?quick_connect_ids:string prop list ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?outbound_caller_config:outbound_caller_config list ->
  hours_of_operation_id:string prop ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
