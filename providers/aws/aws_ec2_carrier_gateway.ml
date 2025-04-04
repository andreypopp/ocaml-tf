(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_carrier_gateway = {
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_carrier_gateway) -> ()

let yojson_of_aws_ec2_carrier_gateway =
  (function
   | {
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
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
    : aws_ec2_carrier_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_carrier_gateway

[@@@deriving.end]

let aws_ec2_carrier_gateway ?id ?tags ?tags_all ~vpc_id () :
    aws_ec2_carrier_gateway =
  { id; tags; tags_all; vpc_id }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  owner_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

let make ?id ?tags ?tags_all ~vpc_id __id =
  let __type = "aws_ec2_carrier_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_carrier_gateway
        (aws_ec2_carrier_gateway ?id ?tags ?tags_all ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
