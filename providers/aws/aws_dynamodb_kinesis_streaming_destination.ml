(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~stream_arn ~table_name __id =
  let __type = "aws_dynamodb_kinesis_streaming_destination" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       stream_arn = Prop.computed __type __id "stream_arn";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_kinesis_streaming_destination
        (aws_dynamodb_kinesis_streaming_destination ?id ~stream_arn
           ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~stream_arn ~table_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~stream_arn ~table_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
