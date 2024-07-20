(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_instance_metadata_defaults

val aws_ec2_instance_metadata_defaults :
  ?http_endpoint:string prop ->
  ?http_put_response_hop_limit:float prop ->
  ?http_tokens:string prop ->
  ?instance_metadata_tags:string prop ->
  unit ->
  aws_ec2_instance_metadata_defaults

val yojson_of_aws_ec2_instance_metadata_defaults :
  aws_ec2_instance_metadata_defaults -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  http_endpoint : string prop;
  http_put_response_hop_limit : float prop;
  http_tokens : string prop;
  id : string prop;
  instance_metadata_tags : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?http_endpoint:string prop ->
  ?http_put_response_hop_limit:float prop ->
  ?http_tokens:string prop ->
  ?instance_metadata_tags:string prop ->
  string ->
  t

val make :
  ?http_endpoint:string prop ->
  ?http_put_response_hop_limit:float prop ->
  ?http_tokens:string prop ->
  ?instance_metadata_tags:string prop ->
  string ->
  t Tf_core.resource
