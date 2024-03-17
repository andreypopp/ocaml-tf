(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_endpoint_access__vpc_endpoint__network_interface = {
  availability_zone : string;  (** availability_zone *)
  network_interface_id : string;  (** network_interface_id *)
  private_ip_address : string;  (** private_ip_address *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]

type aws_redshift_endpoint_access__vpc_endpoint = {
  network_interface :
    aws_redshift_endpoint_access__vpc_endpoint__network_interface
    list;
      (** network_interface *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]

type aws_redshift_endpoint_access = {
  cluster_identifier : string;  (** cluster_identifier *)
  endpoint_name : string;  (** endpoint_name *)
  subnet_group_name : string;  (** subnet_group_name *)
}
[@@deriving yojson_of]
(** aws_redshift_endpoint_access *)

let aws_redshift_endpoint_access ~cluster_identifier ~endpoint_name
    ~subnet_group_name __resource_id =
  let __resource_type = "aws_redshift_endpoint_access" in
  let __resource =
    { cluster_identifier; endpoint_name; subnet_group_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_endpoint_access __resource);
  ()
