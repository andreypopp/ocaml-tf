(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint__kinesis_stream_config = {
  role_arn : string prop;
  stream_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint__kinesis_stream_config) -> ()

let yojson_of_endpoint__kinesis_stream_config =
  (function
   | { role_arn = v_role_arn; stream_arn = v_stream_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_arn in
         ("stream_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : endpoint__kinesis_stream_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint__kinesis_stream_config

[@@@deriving.end]

type endpoint = {
  kinesis_stream_config : endpoint__kinesis_stream_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stream_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint) -> ()

let yojson_of_endpoint =
  (function
   | {
       kinesis_stream_config = v_kinesis_stream_config;
       stream_type = v_stream_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_type in
         ("stream_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_stream_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_endpoint__kinesis_stream_config)
               v_kinesis_stream_config
           in
           let bnd = "kinesis_stream_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint

[@@@deriving.end]

type aws_cloudfront_realtime_log_config = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_realtime_log_config) -> ()

let yojson_of_aws_cloudfront_realtime_log_config =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_cloudfront_realtime_log_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_realtime_log_config

[@@@deriving.end]

let aws_cloudfront_realtime_log_config ?id ~name () :
    aws_cloudfront_realtime_log_config =
  { id; name }

type t = {
  tf_name : string;
  arn : string prop;
  endpoint : endpoint list prop;
  fields : string list prop;
  id : string prop;
  name : string prop;
  sampling_rate : float prop;
}

let make ?id ~name __id =
  let __type = "aws_cloudfront_realtime_log_config" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       endpoint = Prop.computed __type __id "endpoint";
       fields = Prop.computed __type __id "fields";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       sampling_rate = Prop.computed __type __id "sampling_rate";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_realtime_log_config
        (aws_cloudfront_realtime_log_config ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
