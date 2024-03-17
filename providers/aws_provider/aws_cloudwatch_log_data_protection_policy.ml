(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_data_protection_policy = {
  log_group_name : string;  (** log_group_name *)
  policy_document : string;  (** policy_document *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_data_protection_policy *)

let aws_cloudwatch_log_data_protection_policy ~log_group_name
    ~policy_document __resource_id =
  let __resource_type =
    "aws_cloudwatch_log_data_protection_policy"
  in
  let __resource = { log_group_name; policy_document } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_data_protection_policy __resource);
  ()
