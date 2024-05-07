(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_key_group = {
  comment : string prop option; [@option]
  id : string prop option; [@option]
  items : string prop list;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_key_group) -> ()

let yojson_of_aws_cloudfront_key_group =
  (function
   | {
       comment = v_comment;
       id = v_id;
       items = v_items;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_items
         in
         ("items", arg) :: bnds
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
       `Assoc bnds
    : aws_cloudfront_key_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_key_group

[@@@deriving.end]

let aws_cloudfront_key_group ?comment ?id ~items ~name () :
    aws_cloudfront_key_group =
  { comment; id; items; name }

type t = {
  tf_name : string;
  comment : string prop;
  etag : string prop;
  id : string prop;
  items : string list prop;
  name : string prop;
}

let make ?comment ?id ~items ~name __id =
  let __type = "aws_cloudfront_key_group" in
  let __attrs =
    ({
       tf_name = __id;
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       items = Prop.computed __type __id "items";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_key_group
        (aws_cloudfront_key_group ?comment ?id ~items ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ~items ~name __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ~items ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
