(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_instance_state__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ec2_instance_state__timeouts *)

type aws_ec2_instance_state = {
  force : bool option; [@option]  (** force *)
  instance_id : string;  (** instance_id *)
  state : string;  (** state *)
  timeouts : aws_ec2_instance_state__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_instance_state *)

let aws_ec2_instance_state ?force ?timeouts ~instance_id ~state
    __resource_id =
  let __resource_type = "aws_ec2_instance_state" in
  let __resource = { force; instance_id; state; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_instance_state __resource);
  ()
