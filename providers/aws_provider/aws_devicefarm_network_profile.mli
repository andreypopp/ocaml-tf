(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_network_profile

val aws_devicefarm_network_profile :
  ?description:string ->
  ?downlink_bandwidth_bits:float ->
  ?downlink_delay_ms:float ->
  ?downlink_jitter_ms:float ->
  ?downlink_loss_percent:float ->
  ?tags:(string * string) list ->
  ?type_:string ->
  ?uplink_bandwidth_bits:float ->
  ?uplink_delay_ms:float ->
  ?uplink_jitter_ms:float ->
  ?uplink_loss_percent:float ->
  name:string ->
  project_arn:string ->
  string ->
  unit
