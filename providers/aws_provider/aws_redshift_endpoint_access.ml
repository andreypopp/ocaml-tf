(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_endpoint_access__vpc_endpoint__network_interface = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]

type aws_redshift_endpoint_access__vpc_endpoint = {
  network_interface :
    aws_redshift_endpoint_access__vpc_endpoint__network_interface
    list;
      (** network_interface *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]

type aws_redshift_endpoint_access = {
  cluster_identifier : string prop;  (** cluster_identifier *)
  endpoint_name : string prop;  (** endpoint_name *)
  id : string prop option; [@option]  (** id *)
  resource_owner : string prop option; [@option]
      (** resource_owner *)
  subnet_group_name : string prop;  (** subnet_group_name *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
}
[@@deriving yojson_of]
(** aws_redshift_endpoint_access *)

let aws_redshift_endpoint_access ?id ?resource_owner
    ?vpc_security_group_ids ~cluster_identifier ~endpoint_name
    ~subnet_group_name __resource_id =
  let __resource_type = "aws_redshift_endpoint_access" in
  let __resource =
    {
      cluster_identifier;
      endpoint_name;
      id;
      resource_owner;
      subnet_group_name;
      vpc_security_group_ids;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_endpoint_access __resource);
  ()
