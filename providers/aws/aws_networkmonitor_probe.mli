(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_networkmonitor_probe

val aws_networkmonitor_probe :
  ?destination_port:float prop ->
  ?packet_size:float prop ->
  ?tags:string prop Tf_core.assoc ->
  destination:string prop ->
  monitor_name:string prop ->
  protocol:string prop ->
  source_arn:string prop ->
  unit ->
  aws_networkmonitor_probe

val yojson_of_aws_networkmonitor_probe :
  aws_networkmonitor_probe -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address_family : string prop;
  arn : string prop;
  destination : string prop;
  destination_port : float prop;
  id : string prop;
  monitor_name : string prop;
  packet_size : float prop;
  probe_id : string prop;
  protocol : string prop;
  source_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?destination_port:float prop ->
  ?packet_size:float prop ->
  ?tags:string prop Tf_core.assoc ->
  destination:string prop ->
  monitor_name:string prop ->
  protocol:string prop ->
  source_arn:string prop ->
  string ->
  t

val make :
  ?destination_port:float prop ->
  ?packet_size:float prop ->
  ?tags:string prop Tf_core.assoc ->
  destination:string prop ->
  monitor_name:string prop ->
  protocol:string prop ->
  source_arn:string prop ->
  string ->
  t Tf_core.resource
