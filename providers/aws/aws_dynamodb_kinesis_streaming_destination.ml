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

let aws_dynamodb_kinesis_streaming_destination ?id ~stream_arn
    ~table_name () : aws_dynamodb_kinesis_streaming_destination =
  { id; stream_arn; table_name }

type t = {
  id : string prop;
  stream_arn : string prop;
  table_name : string prop;
}

let register ?tf_module ?id ~stream_arn ~table_name __resource_id =
  let __resource_type =
    "aws_dynamodb_kinesis_streaming_destination"
  in
  let __resource =
    aws_dynamodb_kinesis_streaming_destination ?id ~stream_arn
      ~table_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
