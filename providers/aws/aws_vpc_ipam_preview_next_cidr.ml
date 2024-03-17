(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam_preview_next_cidr = {
  disallowed_cidrs : string prop list option; [@option]
      (** disallowed_cidrs *)
  id : string prop option; [@option]  (** id *)
  ipam_pool_id : string prop;  (** ipam_pool_id *)
  netmask_length : float prop option; [@option]  (** netmask_length *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_preview_next_cidr *)

type t = {
  cidr : string prop;
  disallowed_cidrs : string list prop;
  id : string prop;
  ipam_pool_id : string prop;
  netmask_length : float prop;
}

let aws_vpc_ipam_preview_next_cidr ?disallowed_cidrs ?id
    ?netmask_length ~ipam_pool_id __resource_id =
  let __resource_type = "aws_vpc_ipam_preview_next_cidr" in
  let __resource =
    ({ disallowed_cidrs; id; ipam_pool_id; netmask_length }
      : aws_vpc_ipam_preview_next_cidr)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_preview_next_cidr __resource);
  let __resource_attributes =
    ({
       cidr = Prop.computed __resource_type __resource_id "cidr";
       disallowed_cidrs =
         Prop.computed __resource_type __resource_id
           "disallowed_cidrs";
       id = Prop.computed __resource_type __resource_id "id";
       ipam_pool_id =
         Prop.computed __resource_type __resource_id "ipam_pool_id";
       netmask_length =
         Prop.computed __resource_type __resource_id "netmask_length";
     }
      : t)
  in
  __resource_attributes
