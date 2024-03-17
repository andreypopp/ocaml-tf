(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_image_block_public_access__timeouts = {
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ec2_image_block_public_access__timeouts *)

type aws_ec2_image_block_public_access = {
  state : string;  (** state *)
  timeouts : aws_ec2_image_block_public_access__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_image_block_public_access *)

let aws_ec2_image_block_public_access ?timeouts ~state __resource_id
    =
  let __resource_type = "aws_ec2_image_block_public_access" in
  let __resource = { state; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_image_block_public_access __resource);
  ()
