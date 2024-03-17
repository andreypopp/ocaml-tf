(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dynamodb_kinesis_streaming_destination = {
  id : string prop option; [@option]  (** id *)
  stream_arn : string prop;  (** stream_arn *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_dynamodb_kinesis_streaming_destination *)

type t = {
  id : string prop;
  stream_arn : string prop;
  table_name : string prop;
}

let aws_dynamodb_kinesis_streaming_destination ?id ~stream_arn
    ~table_name __resource_id =
  let __resource_type =
    "aws_dynamodb_kinesis_streaming_destination"
  in
  let __resource =
    ({ id; stream_arn; table_name }
      : aws_dynamodb_kinesis_streaming_destination)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_kinesis_streaming_destination __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       stream_arn =
         Prop.computed __resource_type __resource_id "stream_arn";
       table_name =
         Prop.computed __resource_type __resource_id "table_name";
     }
      : t)
  in
  __resource_attributes
