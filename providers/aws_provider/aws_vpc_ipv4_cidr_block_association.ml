(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipv4_cidr_block_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpc_ipv4_cidr_block_association__timeouts *)

type aws_vpc_ipv4_cidr_block_association = {
  cidr_block : string option; [@option]  (** cidr_block *)
  id : string option; [@option]  (** id *)
  ipv4_ipam_pool_id : string option; [@option]
      (** ipv4_ipam_pool_id *)
  ipv4_netmask_length : float option; [@option]
      (** ipv4_netmask_length *)
  vpc_id : string;  (** vpc_id *)
  timeouts : aws_vpc_ipv4_cidr_block_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipv4_cidr_block_association *)

let aws_vpc_ipv4_cidr_block_association ?cidr_block ?id
    ?ipv4_ipam_pool_id ?ipv4_netmask_length ?timeouts ~vpc_id
    __resource_id =
  let __resource_type = "aws_vpc_ipv4_cidr_block_association" in
  let __resource =
    {
      cidr_block;
      id;
      ipv4_ipam_pool_id;
      ipv4_netmask_length;
      vpc_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipv4_cidr_block_association __resource);
  ()
