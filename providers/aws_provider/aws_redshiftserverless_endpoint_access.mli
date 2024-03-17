(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshiftserverless_endpoint_access__vpc_endpoint__network_interface = {
  availability_zone : string;  (** availability_zone *)
  network_interface_id : string;  (** network_interface_id *)
  private_ip_address : string;  (** private_ip_address *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]

type aws_redshiftserverless_endpoint_access__vpc_endpoint = {
  network_interface :
    aws_redshiftserverless_endpoint_access__vpc_endpoint__network_interface
    list;
      (** network_interface *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]

type aws_redshiftserverless_endpoint_access

val aws_redshiftserverless_endpoint_access :
  ?owner_account:string ->
  endpoint_name:string ->
  subnet_ids:string list ->
  workgroup_name:string ->
  string ->
  unit
