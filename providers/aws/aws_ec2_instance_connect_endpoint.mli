(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ec2_instance_connect_endpoint

val aws_ec2_instance_connect_endpoint :
  ?preserve_client_ip:bool prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  unit ->
  aws_ec2_instance_connect_endpoint

val yojson_of_aws_ec2_instance_connect_endpoint :
  aws_ec2_instance_connect_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  dns_name : string prop;
  fips_dns_name : string prop;
  id : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  preserve_client_ip : bool prop;
  security_group_ids : string list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?preserve_client_ip:bool prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?preserve_client_ip:bool prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
