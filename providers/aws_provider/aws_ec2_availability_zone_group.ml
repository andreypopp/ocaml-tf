(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_availability_zone_group = {
  group_name : string;  (** group_name *)
  opt_in_status : string;  (** opt_in_status *)
}
[@@deriving yojson_of]
(** aws_ec2_availability_zone_group *)

let aws_ec2_availability_zone_group ~group_name ~opt_in_status
    __resource_id =
  let __resource_type = "aws_ec2_availability_zone_group" in
  let __resource = { group_name; opt_in_status } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_availability_zone_group __resource);
  ()
