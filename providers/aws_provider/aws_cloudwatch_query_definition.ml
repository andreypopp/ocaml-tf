(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_query_definition = {
  id : string option; [@option]  (** id *)
  log_group_names : string list option; [@option]
      (** log_group_names *)
  name : string;  (** name *)
  query_string : string;  (** query_string *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_query_definition *)

let aws_cloudwatch_query_definition ?id ?log_group_names ~name
    ~query_string __resource_id =
  let __resource_type = "aws_cloudwatch_query_definition" in
  let __resource = { id; log_group_names; name; query_string } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_query_definition __resource);
  ()
