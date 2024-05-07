(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vpc_endpoint__network_interface = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}

type vpc_endpoint = {
  network_interface : vpc_endpoint__network_interface list;
      (** network_interface *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop;  (** vpc_id *)
}

type aws_redshiftserverless_endpoint_access

val aws_redshiftserverless_endpoint_access :
  ?id:string prop ->
  ?owner_account:string prop ->
  ?vpc_security_group_ids:string prop list ->
  endpoint_name:string prop ->
  subnet_ids:string prop list ->
  workgroup_name:string prop ->
  unit ->
  aws_redshiftserverless_endpoint_access

val yojson_of_aws_redshiftserverless_endpoint_access :
  aws_redshiftserverless_endpoint_access -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address : string prop;
  arn : string prop;
  endpoint_name : string prop;
  id : string prop;
  owner_account : string prop;
  port : float prop;
  subnet_ids : string list prop;
  vpc_endpoint : vpc_endpoint list prop;
  vpc_security_group_ids : string list prop;
  workgroup_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?owner_account:string prop ->
  ?vpc_security_group_ids:string prop list ->
  endpoint_name:string prop ->
  subnet_ids:string prop list ->
  workgroup_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?owner_account:string prop ->
  ?vpc_security_group_ids:string prop list ->
  endpoint_name:string prop ->
  subnet_ids:string prop list ->
  workgroup_name:string prop ->
  string ->
  t Tf_core.resource
