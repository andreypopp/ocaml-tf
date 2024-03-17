(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_standards_subscription = {
  standards_arn : string;  (** standards_arn *)
}
[@@deriving yojson_of]
(** aws_securityhub_standards_subscription *)

let aws_securityhub_standards_subscription ~standards_arn
    __resource_id =
  let __resource_type = "aws_securityhub_standards_subscription" in
  let __resource = { standards_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_standards_subscription __resource);
  ()
