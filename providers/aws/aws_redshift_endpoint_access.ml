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

type t = {
  address : string prop;
  cluster_identifier : string prop;
  endpoint_name : string prop;
  id : string prop;
  port : float prop;
  resource_owner : string prop;
  subnet_group_name : string prop;
  vpc_endpoint :
    aws_redshift_endpoint_access__vpc_endpoint list prop;
  vpc_security_group_ids : string list prop;
}

let aws_redshift_endpoint_access ?id ?resource_owner
    ?vpc_security_group_ids ~cluster_identifier ~endpoint_name
    ~subnet_group_name __resource_id =
  let __resource_type = "aws_redshift_endpoint_access" in
  let __resource =
    ({
       cluster_identifier;
       endpoint_name;
       id;
       resource_owner;
       subnet_group_name;
       vpc_security_group_ids;
     }
      : aws_redshift_endpoint_access)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_endpoint_access __resource);
  let __resource_attributes =
    ({
       address =
         Prop.computed __resource_type __resource_id "address";
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       endpoint_name =
         Prop.computed __resource_type __resource_id "endpoint_name";
       id = Prop.computed __resource_type __resource_id "id";
       port = Prop.computed __resource_type __resource_id "port";
       resource_owner =
         Prop.computed __resource_type __resource_id "resource_owner";
       subnet_group_name =
         Prop.computed __resource_type __resource_id
           "subnet_group_name";
       vpc_endpoint =
         Prop.computed __resource_type __resource_id "vpc_endpoint";
       vpc_security_group_ids =
         Prop.computed __resource_type __resource_id
           "vpc_security_group_ids";
     }
      : t)
  in
  __resource_attributes
