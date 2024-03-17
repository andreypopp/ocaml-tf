(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dynamodb_kinesis_streaming_destination = {
  id : string option; [@option]  (** id *)
  stream_arn : string;  (** stream_arn *)
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_dynamodb_kinesis_streaming_destination *)

let aws_dynamodb_kinesis_streaming_destination ?id ~stream_arn
    ~table_name __resource_id =
  let __resource_type =
    "aws_dynamodb_kinesis_streaming_destination"
  in
  let __resource = { id; stream_arn; table_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_kinesis_streaming_destination __resource);
  ()
