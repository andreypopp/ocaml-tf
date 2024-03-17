(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_image_block_public_access__timeouts = {
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ec2_image_block_public_access__timeouts *)

type aws_ec2_image_block_public_access = {
  id : string prop option; [@option]  (** id *)
  state : string prop;  (** state *)
  timeouts : aws_ec2_image_block_public_access__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_image_block_public_access *)

type t = { id : string prop; state : string prop }

let aws_ec2_image_block_public_access ?id ?timeouts ~state
    __resource_id =
  let __resource_type = "aws_ec2_image_block_public_access" in
  let __resource =
    ({ id; state; timeouts } : aws_ec2_image_block_public_access)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_image_block_public_access __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
