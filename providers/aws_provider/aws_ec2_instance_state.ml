(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_instance_state__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ec2_instance_state__timeouts *)

type aws_ec2_instance_state = {
  force : bool prop option; [@option]  (** force *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  state : string prop;  (** state *)
  timeouts : aws_ec2_instance_state__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_instance_state *)

type t = {
  force : bool prop;
  id : string prop;
  instance_id : string prop;
  state : string prop;
}

let aws_ec2_instance_state ?force ?id ?timeouts ~instance_id ~state
    __resource_id =
  let __resource_type = "aws_ec2_instance_state" in
  let __resource =
    ({ force; id; instance_id; state; timeouts }
      : aws_ec2_instance_state)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_instance_state __resource);
  let __resource_attributes =
    ({
       force = Prop.computed __resource_type __resource_id "force";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
