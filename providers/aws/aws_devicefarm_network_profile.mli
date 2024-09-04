(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_devicefarm_network_profile

val aws_devicefarm_network_profile :
  ?description:string prop ->
  ?downlink_bandwidth_bits:float prop ->
  ?downlink_delay_ms:float prop ->
  ?downlink_jitter_ms:float prop ->
  ?downlink_loss_percent:float prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?uplink_bandwidth_bits:float prop ->
  ?uplink_delay_ms:float prop ->
  ?uplink_jitter_ms:float prop ->
  ?uplink_loss_percent:float prop ->
  name:string prop ->
  project_arn:string prop ->
  unit ->
  aws_devicefarm_network_profile

val yojson_of_aws_devicefarm_network_profile :
  aws_devicefarm_network_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  downlink_bandwidth_bits : float prop;
  downlink_delay_ms : float prop;
  downlink_jitter_ms : float prop;
  downlink_loss_percent : float prop;
  id : string prop;
  name : string prop;
  project_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
  uplink_bandwidth_bits : float prop;
  uplink_delay_ms : float prop;
  uplink_jitter_ms : float prop;
  uplink_loss_percent : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?downlink_bandwidth_bits:float prop ->
  ?downlink_delay_ms:float prop ->
  ?downlink_jitter_ms:float prop ->
  ?downlink_loss_percent:float prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?uplink_bandwidth_bits:float prop ->
  ?uplink_delay_ms:float prop ->
  ?uplink_jitter_ms:float prop ->
  ?uplink_loss_percent:float prop ->
  name:string prop ->
  project_arn:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?downlink_bandwidth_bits:float prop ->
  ?downlink_delay_ms:float prop ->
  ?downlink_jitter_ms:float prop ->
  ?downlink_loss_percent:float prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?uplink_bandwidth_bits:float prop ->
  ?uplink_delay_ms:float prop ->
  ?uplink_jitter_ms:float prop ->
  ?uplink_loss_percent:float prop ->
  name:string prop ->
  project_arn:string prop ->
  string ->
  t Tf_core.resource
