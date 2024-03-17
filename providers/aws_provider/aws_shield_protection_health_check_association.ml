(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_shield_protection_health_check_association = {
  health_check_arn : string;  (** health_check_arn *)
  shield_protection_id : string;  (** shield_protection_id *)
}
[@@deriving yojson_of]
(** aws_shield_protection_health_check_association *)

let aws_shield_protection_health_check_association ~health_check_arn
    ~shield_protection_id __resource_id =
  let __resource_type =
    "aws_shield_protection_health_check_association"
  in
  let __resource = { health_check_arn; shield_protection_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_protection_health_check_association
       __resource);
  ()
