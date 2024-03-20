(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kinesis_stream_consumer = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  stream_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kinesis_stream_consumer) -> ()

let yojson_of_aws_kinesis_stream_consumer =
  (function
   | {
       arn = v_arn;
       id = v_id;
       name = v_name;
       stream_arn = v_stream_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_arn in
         ("stream_arn", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kinesis_stream_consumer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kinesis_stream_consumer

[@@@deriving.end]

let aws_kinesis_stream_consumer ?arn ?id ?name ~stream_arn () :
    aws_kinesis_stream_consumer =
  { arn; id; name; stream_arn }

type t = {
  arn : string prop;
  creation_timestamp : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  stream_arn : string prop;
}

let make ?arn ?id ?name ~stream_arn __id =
  let __type = "aws_kinesis_stream_consumer" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       stream_arn = Prop.computed __type __id "stream_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesis_stream_consumer
        (aws_kinesis_stream_consumer ?arn ?id ?name ~stream_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name ~stream_arn __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?id ?name ~stream_arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
