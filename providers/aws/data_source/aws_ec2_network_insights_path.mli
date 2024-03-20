(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_ec2_network_insights_path

val aws_ec2_network_insights_path :
  ?id:string prop ->
  ?network_insights_path_id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  unit ->
  aws_ec2_network_insights_path

val yojson_of_aws_ec2_network_insights_path :
  aws_ec2_network_insights_path -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  destination : string prop;
  destination_arn : string prop;
  destination_ip : string prop;
  destination_port : float prop;
  id : string prop;
  network_insights_path_id : string prop;
  protocol : string prop;
  source : string prop;
  source_arn : string prop;
  source_ip : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?network_insights_path_id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?network_insights_path_id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
