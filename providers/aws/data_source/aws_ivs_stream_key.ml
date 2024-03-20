(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ivs_stream_key = {
  channel_arn : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ivs_stream_key) -> ()

let yojson_of_aws_ivs_stream_key =
  (function
   | { channel_arn = v_channel_arn; id = v_id; tags = v_tags } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_channel_arn in
         ("channel_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_ivs_stream_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ivs_stream_key

[@@@deriving.end]

let aws_ivs_stream_key ?id ?tags ~channel_arn () : aws_ivs_stream_key
    =
  { channel_arn; id; tags }

type t = {
  arn : string prop;
  channel_arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  value : string prop;
}

let make ?id ?tags ~channel_arn __id =
  let __type = "aws_ivs_stream_key" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       channel_arn = Prop.computed __type __id "channel_arn";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ivs_stream_key
        (aws_ivs_stream_key ?id ?tags ~channel_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~channel_arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~channel_arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
