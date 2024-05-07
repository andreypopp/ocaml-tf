(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_traffic_policy = {
  comment : string prop option; [@option]
  document : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_traffic_policy) -> ()

let yojson_of_aws_route53_traffic_policy =
  (function
   | {
       comment = v_comment;
       document = v_document;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_document in
         ("document", arg) :: bnds
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
    : aws_route53_traffic_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_traffic_policy

[@@@deriving.end]

let aws_route53_traffic_policy ?comment ?id ~document ~name () :
    aws_route53_traffic_policy =
  { comment; document; id; name }

type t = {
  tf_name : string;
  comment : string prop;
  document : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  version : float prop;
}

let make ?comment ?id ~document ~name __id =
  let __type = "aws_route53_traffic_policy" in
  let __attrs =
    ({
       tf_name = __id;
       comment = Prop.computed __type __id "comment";
       document = Prop.computed __type __id "document";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_traffic_policy
        (aws_route53_traffic_policy ?comment ?id ~document ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ~document ~name __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ~document ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
