(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipv6_cidr_block_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpc_ipv6_cidr_block_association__timeouts *)

type aws_vpc_ipv6_cidr_block_association = {
  id : string prop option; [@option]  (** id *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  ipv6_ipam_pool_id : string prop;  (** ipv6_ipam_pool_id *)
  ipv6_netmask_length : float prop option; [@option]
      (** ipv6_netmask_length *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : aws_vpc_ipv6_cidr_block_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipv6_cidr_block_association *)

let aws_vpc_ipv6_cidr_block_association ?id ?ipv6_cidr_block
    ?ipv6_netmask_length ?timeouts ~ipv6_ipam_pool_id ~vpc_id
    __resource_id =
  let __resource_type = "aws_vpc_ipv6_cidr_block_association" in
  let __resource =
    {
      id;
      ipv6_cidr_block;
      ipv6_ipam_pool_id;
      ipv6_netmask_length;
      vpc_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipv6_cidr_block_association __resource);
  ()
