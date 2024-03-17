(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_stream = {
  id : string prop option; [@option]  (** id *)
  log_group_name : string prop;  (** log_group_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_stream *)

let aws_cloudwatch_log_stream ?id ~log_group_name ~name __resource_id
    =
  let __resource_type = "aws_cloudwatch_log_stream" in
  let __resource = { id; log_group_name; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_stream __resource);
  ()
