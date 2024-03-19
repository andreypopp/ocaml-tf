(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpc_ipv6_cidr_block_association = {
  id : string prop option; [@option]  (** id *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  ipv6_ipam_pool_id : string prop;  (** ipv6_ipam_pool_id *)
  ipv6_netmask_length : float prop option; [@option]
      (** ipv6_netmask_length *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipv6_cidr_block_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpc_ipv6_cidr_block_association ?id ?ipv6_cidr_block
    ?ipv6_netmask_length ?timeouts ~ipv6_ipam_pool_id ~vpc_id () :
    aws_vpc_ipv6_cidr_block_association =
  {
    id;
    ipv6_cidr_block;
    ipv6_ipam_pool_id;
    ipv6_netmask_length;
    vpc_id;
    timeouts;
  }

type t = {
  id : string prop;
  ipv6_cidr_block : string prop;
  ipv6_ipam_pool_id : string prop;
  ipv6_netmask_length : float prop;
  vpc_id : string prop;
}

let register ?tf_module ?id ?ipv6_cidr_block ?ipv6_netmask_length
    ?timeouts ~ipv6_ipam_pool_id ~vpc_id __resource_id =
  let __resource_type = "aws_vpc_ipv6_cidr_block_association" in
  let __resource =
    aws_vpc_ipv6_cidr_block_association ?id ?ipv6_cidr_block
      ?ipv6_netmask_length ?timeouts ~ipv6_ipam_pool_id ~vpc_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipv6_cidr_block_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       ipv6_cidr_block =
         Prop.computed __resource_type __resource_id
           "ipv6_cidr_block";
       ipv6_ipam_pool_id =
         Prop.computed __resource_type __resource_id
           "ipv6_ipam_pool_id";
       ipv6_netmask_length =
         Prop.computed __resource_type __resource_id
           "ipv6_netmask_length";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
