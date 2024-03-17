(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_session

val aws_ec2_traffic_mirror_session :
  ?description:string prop ->
  ?id:string prop ->
  ?packet_length:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?virtual_network_id:float prop ->
  network_interface_id:string prop ->
  session_number:float prop ->
  traffic_mirror_filter_id:string prop ->
  traffic_mirror_target_id:string prop ->
  string ->
  unit
