(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type stream_mode_details = { stream_mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : stream_mode_details) -> ()

let yojson_of_stream_mode_details =
  (function
   | { stream_mode = v_stream_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_mode in
         ("stream_mode", arg) :: bnds
       in
       `Assoc bnds
    : stream_mode_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stream_mode_details

[@@@deriving.end]

type aws_kinesis_stream = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kinesis_stream) -> ()

let yojson_of_aws_kinesis_stream =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_kinesis_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kinesis_stream

[@@@deriving.end]

let aws_kinesis_stream ?id ?tags ~name () : aws_kinesis_stream =
  { id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  closed_shards : string list prop;
  creation_timestamp : float prop;
  id : string prop;
  name : string prop;
  open_shards : string list prop;
  retention_period : float prop;
  shard_level_metrics : string list prop;
  status : string prop;
  stream_mode_details : stream_mode_details list prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_kinesis_stream" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       closed_shards = Prop.computed __type __id "closed_shards";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       open_shards = Prop.computed __type __id "open_shards";
       retention_period =
         Prop.computed __type __id "retention_period";
       shard_level_metrics =
         Prop.computed __type __id "shard_level_metrics";
       status = Prop.computed __type __id "status";
       stream_mode_details =
         Prop.computed __type __id "stream_mode_details";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesis_stream
        (aws_kinesis_stream ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
