(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam_pool_cidr_allocation = {
  cidr : string prop option; [@option]  (** cidr *)
  description : string prop option; [@option]  (** description *)
  disallowed_cidrs : string prop list option; [@option]
      (** disallowed_cidrs *)
  id : string prop option; [@option]  (** id *)
  ipam_pool_id : string prop;  (** ipam_pool_id *)
  netmask_length : float prop option; [@option]  (** netmask_length *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool_cidr_allocation *)

let aws_vpc_ipam_pool_cidr_allocation ?cidr ?description
    ?disallowed_cidrs ?id ?netmask_length ~ipam_pool_id __resource_id
    =
  let __resource_type = "aws_vpc_ipam_pool_cidr_allocation" in
  let __resource =
    {
      cidr;
      description;
      disallowed_cidrs;
      id;
      ipam_pool_id;
      netmask_length;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_pool_cidr_allocation __resource);
  ()
