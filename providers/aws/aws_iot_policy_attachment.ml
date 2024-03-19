(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  target : string prop;  (** target *)
}
[@@deriving yojson_of]
(** aws_iot_policy_attachment *)

let aws_iot_policy_attachment ?id ~policy ~target () :
    aws_iot_policy_attachment =
  { id; policy; target }

type t = {
  id : string prop;
  policy : string prop;
  target : string prop;
}

let register ?tf_module ?id ~policy ~target __resource_id =
  let __resource_type = "aws_iot_policy_attachment" in
  let __resource =
    aws_iot_policy_attachment ?id ~policy ~target ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_policy_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       target = Prop.computed __resource_type __resource_id "target";
     }
      : t)
  in
  __resource_attributes
