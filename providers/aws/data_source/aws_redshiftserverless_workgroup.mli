(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoint__vpc_endpoint__network_interface = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}

type endpoint__vpc_endpoint = {
  network_interface : endpoint__vpc_endpoint__network_interface list;
      (** network_interface *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop;  (** vpc_id *)
}

type endpoint = {
  address : string prop;  (** address *)
  port : float prop;  (** port *)
  vpc_endpoint : endpoint__vpc_endpoint list;  (** vpc_endpoint *)
}

type aws_redshiftserverless_workgroup

val aws_redshiftserverless_workgroup :
  ?id:string prop ->
  workgroup_name:string prop ->
  unit ->
  aws_redshiftserverless_workgroup

val yojson_of_aws_redshiftserverless_workgroup :
  aws_redshiftserverless_workgroup -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  endpoint : endpoint list prop;
  enhanced_vpc_routing : bool prop;
  id : string prop;
  namespace_name : string prop;
  publicly_accessible : bool prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  workgroup_id : string prop;
  workgroup_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  workgroup_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  workgroup_name:string prop ->
  string ->
  t Tf_core.resource
