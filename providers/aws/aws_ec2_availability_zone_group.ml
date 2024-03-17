(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_availability_zone_group = {
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
  opt_in_status : string prop;  (** opt_in_status *)
}
[@@deriving yojson_of]
(** aws_ec2_availability_zone_group *)

type t = {
  group_name : string prop;
  id : string prop;
  opt_in_status : string prop;
}

let aws_ec2_availability_zone_group ?id ~group_name ~opt_in_status
    __resource_id =
  let __resource_type = "aws_ec2_availability_zone_group" in
  let __resource =
    ({ group_name; id; opt_in_status }
      : aws_ec2_availability_zone_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_availability_zone_group __resource);
  let __resource_attributes =
    ({
       group_name =
         Prop.computed __resource_type __resource_id "group_name";
       id = Prop.computed __resource_type __resource_id "id";
       opt_in_status =
         Prop.computed __resource_type __resource_id "opt_in_status";
     }
      : t)
  in
  __resource_attributes
