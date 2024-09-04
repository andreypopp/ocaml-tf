(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_vpc_link = {
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  vpc_link_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_vpc_link) -> ()

let yojson_of_aws_apigatewayv2_vpc_link =
  (function
   | { id = v_id; tags = v_tags; vpc_link_id = v_vpc_link_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_link_id in
         ("vpc_link_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
       `Assoc bnds
    : aws_apigatewayv2_vpc_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_vpc_link

[@@@deriving.end]

let aws_apigatewayv2_vpc_link ?id ?tags ~vpc_link_id () :
    aws_apigatewayv2_vpc_link =
  { id; tags; vpc_link_id }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  vpc_link_id : string prop;
}

let make ?id ?tags ~vpc_link_id __id =
  let __type = "aws_apigatewayv2_vpc_link" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       vpc_link_id = Prop.computed __type __id "vpc_link_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_vpc_link
        (aws_apigatewayv2_vpc_link ?id ?tags ~vpc_link_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~vpc_link_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~vpc_link_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
