(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_opensearchserverless_vpc_endpoint = {
  id : string prop option; [@option]
  vpc_endpoint_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearchserverless_vpc_endpoint) -> ()

let yojson_of_aws_opensearchserverless_vpc_endpoint =
  (function
   | { id = v_id; vpc_endpoint_id = v_vpc_endpoint_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpc_endpoint_id
         in
         ("vpc_endpoint_id", arg) :: bnds
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
    : aws_opensearchserverless_vpc_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearchserverless_vpc_endpoint

[@@@deriving.end]

let aws_opensearchserverless_vpc_endpoint ?id ~vpc_endpoint_id () :
    aws_opensearchserverless_vpc_endpoint =
  { id; vpc_endpoint_id }

type t = {
  created_date : string prop;
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  vpc_endpoint_id : string prop;
  vpc_id : string prop;
}

let make ?id ~vpc_endpoint_id __id =
  let __type = "aws_opensearchserverless_vpc_endpoint" in
  let __attrs =
    ({
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearchserverless_vpc_endpoint
        (aws_opensearchserverless_vpc_endpoint ?id ~vpc_endpoint_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~vpc_endpoint_id __id =
  let (r : _ Tf_core.resource) = make ?id ~vpc_endpoint_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
