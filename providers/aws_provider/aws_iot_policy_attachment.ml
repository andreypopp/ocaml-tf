(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_iot_policy_attachment = {
  policy : string;  (** policy *)
  target : string;  (** target *)
}
[@@deriving yojson_of]
(** aws_iot_policy_attachment *)

let aws_iot_policy_attachment ~policy ~target __resource_id =
  let __resource_type = "aws_iot_policy_attachment" in
  let __resource = { policy; target } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_policy_attachment __resource);
  ()