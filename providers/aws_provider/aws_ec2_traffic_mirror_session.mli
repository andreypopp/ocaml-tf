(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_traffic_mirror_session

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  network_interface_id : string prop;
  owner_id : string prop;
  packet_length : float prop;
  session_number : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  traffic_mirror_filter_id : string prop;
  traffic_mirror_target_id : string prop;
  virtual_network_id : float prop;
}

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
  t
