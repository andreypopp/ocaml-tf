(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_image_block_public_access = {
  id : string prop option; [@option]  (** id *)
  state : string prop;  (** state *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_image_block_public_access *)

let timeouts ?update () : timeouts = { update }

let aws_ec2_image_block_public_access ?id ?timeouts ~state () :
    aws_ec2_image_block_public_access =
  { id; state; timeouts }

type t = { id : string prop; state : string prop }

let register ?tf_module ?id ?timeouts ~state __resource_id =
  let __resource_type = "aws_ec2_image_block_public_access" in
  let __resource =
    aws_ec2_image_block_public_access ?id ?timeouts ~state ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_image_block_public_access __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
