(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

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

type aws_redshiftserverless_endpoint_access = {
  endpoint_name : string;  (** endpoint_name *)
  id : string option; [@option]  (** id *)
  owner_account : string option; [@option]  (** owner_account *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_security_group_ids : string list option; [@option]
      (** vpc_security_group_ids *)
  workgroup_name : string;  (** workgroup_name *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_endpoint_access *)

let aws_redshiftserverless_endpoint_access ?id ?owner_account
    ?vpc_security_group_ids ~endpoint_name ~subnet_ids
    ~workgroup_name __resource_id =
  let __resource_type = "aws_redshiftserverless_endpoint_access" in
  let __resource =
    {
      endpoint_name;
      id;
      owner_account;
      subnet_ids;
      vpc_security_group_ids;
      workgroup_name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_endpoint_access __resource);
  ()
