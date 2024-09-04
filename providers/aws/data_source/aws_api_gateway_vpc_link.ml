(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_vpc_link = {
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_vpc_link) -> ()

let yojson_of_aws_api_gateway_vpc_link =
  (function
   | { name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_vpc_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_vpc_link

[@@@deriving.end]

let aws_api_gateway_vpc_link ?tags ~name () :
    aws_api_gateway_vpc_link =
  { name; tags }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  status_message : string prop;
  tags : string Tf_core.assoc prop;
  target_arns : string list prop;
}

let make ?tags ~name __id =
  let __type = "aws_api_gateway_vpc_link" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       status_message = Prop.computed __type __id "status_message";
       tags = Prop.computed __type __id "tags";
       target_arns = Prop.computed __type __id "target_arns";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_vpc_link
        (aws_api_gateway_vpc_link ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
