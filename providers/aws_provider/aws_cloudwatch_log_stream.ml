(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_stream = {
  log_group_name : string;  (** log_group_name *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_stream *)

let aws_cloudwatch_log_stream ~log_group_name ~name __resource_id =
  let __resource_type = "aws_cloudwatch_log_stream" in
  let __resource = { log_group_name; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_stream __resource);
  ()
