(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpc_ipam_preview_next_cidr = {
  disallowed_cidrs : string list option; [@option]
      (** disallowed_cidrs *)
  ipam_pool_id : string;  (** ipam_pool_id *)
  netmask_length : float option; [@option]  (** netmask_length *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_preview_next_cidr *)

let aws_vpc_ipam_preview_next_cidr ?disallowed_cidrs ?netmask_length
    ~ipam_pool_id __resource_id =
  let __resource_type = "aws_vpc_ipam_preview_next_cidr" in
  let __resource =
    { disallowed_cidrs; ipam_pool_id; netmask_length }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_preview_next_cidr __resource);
  ()
