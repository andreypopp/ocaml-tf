(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sns_topic_policy = {
  arn : string;  (** arn *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_sns_topic_policy *)

let aws_sns_topic_policy ~arn ~policy __resource_id =
  let __resource_type = "aws_sns_topic_policy" in
  let __resource = { arn; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sns_topic_policy __resource);
  ()
