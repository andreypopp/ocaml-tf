(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_verifiedpermissions_policy_template = {
  description : string option; [@option]  (** description *)
  policy_store_id : string;  (** policy_store_id *)
  statement : string;  (** statement *)
}
[@@deriving yojson_of]
(** aws_verifiedpermissions_policy_template *)

let aws_verifiedpermissions_policy_template ?description
    ~policy_store_id ~statement __resource_id =
  let __resource_type = "aws_verifiedpermissions_policy_template" in
  let __resource = { description; policy_store_id; statement } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedpermissions_policy_template __resource);
  ()
