(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kinesis_stream_consumer = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  stream_arn : string;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_stream_consumer *)

let aws_kinesis_stream_consumer ?id ~name ~stream_arn __resource_id =
  let __resource_type = "aws_kinesis_stream_consumer" in
  let __resource = { id; name; stream_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesis_stream_consumer __resource);
  ()
