(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecr_registry_policy = {
  id : string option; [@option]  (** id *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_ecr_registry_policy *)

let aws_ecr_registry_policy ?id ~policy __resource_id =
  let __resource_type = "aws_ecr_registry_policy" in
  let __resource = { id; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_registry_policy __resource);
  ()
