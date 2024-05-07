(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpn_gateway = {
  amazon_side_asn : string prop option; [@option]
  availability_zone : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpn_gateway) -> ()

let yojson_of_aws_vpn_gateway =
  (function
   | {
       amazon_side_asn = v_amazon_side_asn;
       availability_zone = v_availability_zone;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_amazon_side_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amazon_side_asn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpn_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpn_gateway

[@@@deriving.end]

let aws_vpn_gateway ?amazon_side_asn ?availability_zone ?id ?tags
    ?tags_all ?vpc_id () : aws_vpn_gateway =
  { amazon_side_asn; availability_zone; id; tags; tags_all; vpc_id }

type t = {
  tf_name : string;
  amazon_side_asn : string prop;
  arn : string prop;
  availability_zone : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?amazon_side_asn ?availability_zone ?id ?tags ?tags_all
    ?vpc_id __id =
  let __type = "aws_vpn_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       amazon_side_asn = Prop.computed __type __id "amazon_side_asn";
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       id = Prop.computed __type __id "id";
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
      yojson_of_aws_vpn_gateway
        (aws_vpn_gateway ?amazon_side_asn ?availability_zone ?id
           ?tags ?tags_all ?vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?amazon_side_asn ?availability_zone ?id ?tags
    ?tags_all ?vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?amazon_side_asn ?availability_zone ?id ?tags ?tags_all
      ?vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
