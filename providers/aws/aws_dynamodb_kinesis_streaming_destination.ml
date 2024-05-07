(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dynamodb_kinesis_streaming_destination = {
  id : string prop option; [@option]
  stream_arn : string prop;
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dynamodb_kinesis_streaming_destination) -> ()

let yojson_of_aws_dynamodb_kinesis_streaming_destination =
  (function
   | {
       id = v_id;
       stream_arn = v_stream_arn;
       table_name = v_table_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_arn in
         ("stream_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dynamodb_kinesis_streaming_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dynamodb_kinesis_streaming_destination

[@@@deriving.end]

let aws_dynamodb_kinesis_streaming_destination ?id ~stream_arn
    ~table_name () : aws_dynamodb_kinesis_streaming_destination =
  { id; stream_arn; table_name }

type t = {
  tf_name : string;
  id : string prop;
  stream_arn : string prop;
  table_name : string prop;
}

let make ?id ~stream_arn ~table_name __id =
  let __type = "aws_dynamodb_kinesis_streaming_destination" in
  let __attrs =
    ({
       tf_name = __id;
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
