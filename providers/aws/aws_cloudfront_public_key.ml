(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_public_key = {
  comment : string prop option; [@option]
  encoded_key : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_public_key) -> ()

let yojson_of_aws_cloudfront_public_key =
  (function
   | {
       comment = v_comment;
       encoded_key = v_encoded_key;
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_encoded_key in
         ("encoded_key", arg) :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_public_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_public_key

[@@@deriving.end]

let aws_cloudfront_public_key ?comment ?id ?name ?name_prefix
    ~encoded_key () : aws_cloudfront_public_key =
  { comment; encoded_key; id; name; name_prefix }

type t = {
  caller_reference : string prop;
  comment : string prop;
  encoded_key : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
}

let make ?comment ?id ?name ?name_prefix ~encoded_key __id =
  let __type = "aws_cloudfront_public_key" in
  let __attrs =
    ({
       caller_reference =
         Prop.computed __type __id "caller_reference";
       comment = Prop.computed __type __id "comment";
       encoded_key = Prop.computed __type __id "encoded_key";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_public_key
        (aws_cloudfront_public_key ?comment ?id ?name ?name_prefix
           ~encoded_key ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ?name ?name_prefix ~encoded_key
    __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ?name ?name_prefix ~encoded_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
