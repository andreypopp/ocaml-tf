(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_synthetics_group_association = {
  canary_arn : string;  (** canary_arn *)
  group_name : string;  (** group_name *)
}
[@@deriving yojson_of]
(** aws_synthetics_group_association *)

let aws_synthetics_group_association ~canary_arn ~group_name
    __resource_id =
  let __resource_type = "aws_synthetics_group_association" in
  let __resource = { canary_arn; group_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_synthetics_group_association __resource);
  ()
