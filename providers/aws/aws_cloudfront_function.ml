(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_function = {
  code : string prop;
  comment : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  publish : bool prop option; [@option]
  runtime : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_function) -> ()

let yojson_of_aws_cloudfront_function =
  (function
   | {
       code = v_code;
       comment = v_comment;
       id = v_id;
       name = v_name;
       publish = v_publish;
       runtime = v_runtime;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runtime in
         ("runtime", arg) :: bnds
       in
       let bnds =
         match v_publish with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publish", arg in
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
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_function -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_function

[@@@deriving.end]

let aws_cloudfront_function ?comment ?id ?publish ~code ~name
    ~runtime () : aws_cloudfront_function =
  { code; comment; id; name; publish; runtime }

type t = {
  tf_name : string;
  arn : string prop;
  code : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  live_stage_etag : string prop;
  name : string prop;
  publish : bool prop;
  runtime : string prop;
  status : string prop;
}

let make ?comment ?id ?publish ~code ~name ~runtime __id =
  let __type = "aws_cloudfront_function" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       code = Prop.computed __type __id "code";
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       live_stage_etag = Prop.computed __type __id "live_stage_etag";
       name = Prop.computed __type __id "name";
       publish = Prop.computed __type __id "publish";
       runtime = Prop.computed __type __id "runtime";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_function
        (aws_cloudfront_function ?comment ?id ?publish ~code ~name
           ~runtime ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ?publish ~code ~name ~runtime
    __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ?publish ~code ~name ~runtime __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
