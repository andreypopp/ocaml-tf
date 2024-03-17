(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_network_profile

val aws_devicefarm_network_profile :
  ?description:string prop ->
  ?downlink_bandwidth_bits:float prop ->
  ?downlink_delay_ms:float prop ->
  ?downlink_jitter_ms:float prop ->
  ?downlink_loss_percent:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?uplink_bandwidth_bits:float prop ->
  ?uplink_delay_ms:float prop ->
  ?uplink_jitter_ms:float prop ->
  ?uplink_loss_percent:float prop ->
  name:string prop ->
  project_arn:string prop ->
  string ->
  unit
