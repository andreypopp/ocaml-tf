(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_session

val aws_ec2_traffic_mirror_session :
  ?description:string ->
  ?id:string ->
  ?packet_length:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?virtual_network_id:float ->
  network_interface_id:string ->
  session_number:float ->
  traffic_mirror_filter_id:string ->
  traffic_mirror_target_id:string ->
  string ->
  unit
