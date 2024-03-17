(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_destination_policy = {
  access_policy : string;  (** access_policy *)
  destination_name : string;  (** destination_name *)
  force_update : bool option; [@option]  (** force_update *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_destination_policy *)

let aws_cloudwatch_log_destination_policy ?force_update
    ~access_policy ~destination_name __resource_id =
  let __resource_type = "aws_cloudwatch_log_destination_policy" in
  let __resource =
    { access_policy; destination_name; force_update }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_destination_policy __resource);
  ()
