(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_function = {
  id : string prop option; [@option]
  name : string prop;
  stage : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_function) -> ()

let yojson_of_aws_cloudfront_function =
  (function
   | { id = v_id; name = v_name; stage = v_stage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stage in
         ("stage", arg) :: bnds
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
    : aws_cloudfront_function -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_function

[@@@deriving.end]

let aws_cloudfront_function ?id ~name ~stage () :
    aws_cloudfront_function =
  { id; name; stage }

type t = {
  tf_name : string;
  arn : string prop;
  code : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
  key_value_store_associations : string list prop;
  last_modified_time : string prop;
  name : string prop;
  runtime : string prop;
  stage : string prop;
  status : string prop;
}

let make ?id ~name ~stage __id =
  let __type = "aws_cloudfront_function" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       code = Prop.computed __type __id "code";
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       key_value_store_associations =
         Prop.computed __type __id "key_value_store_associations";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       name = Prop.computed __type __id "name";
       runtime = Prop.computed __type __id "runtime";
       stage = Prop.computed __type __id "stage";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_function
        (aws_cloudfront_function ?id ~name ~stage ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~stage __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~stage __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
