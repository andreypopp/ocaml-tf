(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_endpoint_access__vpc_endpoint__network_interface = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]

type aws_redshiftserverless_endpoint_access__vpc_endpoint = {
  network_interface :
    aws_redshiftserverless_endpoint_access__vpc_endpoint__network_interface
    list;
      (** network_interface *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]

type aws_redshiftserverless_endpoint_access = {
  endpoint_name : string prop;  (** endpoint_name *)
  id : string prop option; [@option]  (** id *)
  owner_account : string prop option; [@option]  (** owner_account *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  workgroup_name : string prop;  (** workgroup_name *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_endpoint_access *)

type t = {
  address : string prop;
  arn : string prop;
  endpoint_name : string prop;
  id : string prop;
  owner_account : string prop;
  port : float prop;
  subnet_ids : string list prop;
  vpc_endpoint :
    aws_redshiftserverless_endpoint_access__vpc_endpoint list prop;
  vpc_security_group_ids : string list prop;
  workgroup_name : string prop;
}

let aws_redshiftserverless_endpoint_access ?id ?owner_account
    ?vpc_security_group_ids ~endpoint_name ~subnet_ids
    ~workgroup_name __resource_id =
  let __resource_type = "aws_redshiftserverless_endpoint_access" in
  let __resource =
    ({
       endpoint_name;
       id;
       owner_account;
       subnet_ids;
       vpc_security_group_ids;
       workgroup_name;
     }
      : aws_redshiftserverless_endpoint_access)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_endpoint_access __resource);
  let __resource_attributes =
    ({
       address =
         Prop.computed __resource_type __resource_id "address";
       arn = Prop.computed __resource_type __resource_id "arn";
       endpoint_name =
         Prop.computed __resource_type __resource_id "endpoint_name";
       id = Prop.computed __resource_type __resource_id "id";
       owner_account =
         Prop.computed __resource_type __resource_id "owner_account";
       port = Prop.computed __resource_type __resource_id "port";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       vpc_endpoint =
         Prop.computed __resource_type __resource_id "vpc_endpoint";
       vpc_security_group_ids =
         Prop.computed __resource_type __resource_id
           "vpc_security_group_ids";
       workgroup_name =
         Prop.computed __resource_type __resource_id "workgroup_name";
     }
      : t)
  in
  __resource_attributes
