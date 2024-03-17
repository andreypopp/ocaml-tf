(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_resource_policy = {
  policy_document : string;  (** policy_document *)
  policy_name : string;  (** policy_name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_resource_policy *)

let aws_cloudwatch_log_resource_policy ~policy_document ~policy_name
    __resource_id =
  let __resource_type = "aws_cloudwatch_log_resource_policy" in
  let __resource = { policy_document; policy_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_resource_policy __resource);
  ()
