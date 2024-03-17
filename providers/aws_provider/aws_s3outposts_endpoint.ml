(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3outposts_endpoint__network_interfaces = {
  network_interface_id : string prop;  (** network_interface_id *)
}
[@@deriving yojson_of]

type aws_s3outposts_endpoint = {
  access_type : string prop option; [@option]  (** access_type *)
  customer_owned_ipv4_pool : string prop option; [@option]
      (** customer_owned_ipv4_pool *)
  id : string prop option; [@option]  (** id *)
  outpost_id : string prop;  (** outpost_id *)
  security_group_id : string prop;  (** security_group_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_s3outposts_endpoint *)

type t = {
  access_type : string prop;
  arn : string prop;
  cidr_block : string prop;
  creation_time : string prop;
  customer_owned_ipv4_pool : string prop;
  id : string prop;
  network_interfaces :
    aws_s3outposts_endpoint__network_interfaces list prop;
  outpost_id : string prop;
  security_group_id : string prop;
  subnet_id : string prop;
}

let aws_s3outposts_endpoint ?access_type ?customer_owned_ipv4_pool
    ?id ~outpost_id ~security_group_id ~subnet_id __resource_id =
  let __resource_type = "aws_s3outposts_endpoint" in
  let __resource =
    ({
       access_type;
       customer_owned_ipv4_pool;
       id;
       outpost_id;
       security_group_id;
       subnet_id;
     }
      : aws_s3outposts_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3outposts_endpoint __resource);
  let __resource_attributes =
    ({
       access_type =
         Prop.computed __resource_type __resource_id "access_type";
       arn = Prop.computed __resource_type __resource_id "arn";
       cidr_block =
         Prop.computed __resource_type __resource_id "cidr_block";
       creation_time =
         Prop.computed __resource_type __resource_id "creation_time";
       customer_owned_ipv4_pool =
         Prop.computed __resource_type __resource_id
           "customer_owned_ipv4_pool";
       id = Prop.computed __resource_type __resource_id "id";
       network_interfaces =
         Prop.computed __resource_type __resource_id
           "network_interfaces";
       outpost_id =
         Prop.computed __resource_type __resource_id "outpost_id";
       security_group_id =
         Prop.computed __resource_type __resource_id
           "security_group_id";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes
