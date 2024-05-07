(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_customer_gateway = {
  bgp_asn : string prop;
  certificate_arn : string prop option; [@option]
  device_name : string prop option; [@option]
  id : string prop option; [@option]
  ip_address : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_customer_gateway) -> ()

let yojson_of_aws_customer_gateway =
  (function
   | {
       bgp_asn = v_bgp_asn;
       certificate_arn = v_certificate_arn;
       device_name = v_device_name;
       id = v_id;
       ip_address = v_ip_address;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
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
         match v_device_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bgp_asn in
         ("bgp_asn", arg) :: bnds
       in
       `Assoc bnds
    : aws_customer_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_customer_gateway

[@@@deriving.end]

let aws_customer_gateway ?certificate_arn ?device_name ?id
    ?ip_address ?tags ?tags_all ~bgp_asn ~type_ () :
    aws_customer_gateway =
  {
    bgp_asn;
    certificate_arn;
    device_name;
    id;
    ip_address;
    tags;
    tags_all;
    type_;
  }

type t = {
  tf_name : string;
  arn : string prop;
  bgp_asn : string prop;
  certificate_arn : string prop;
  device_name : string prop;
  id : string prop;
  ip_address : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?certificate_arn ?device_name ?id ?ip_address ?tags
    ?tags_all ~bgp_asn ~type_ __id =
  let __type = "aws_customer_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       bgp_asn = Prop.computed __type __id "bgp_asn";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       device_name = Prop.computed __type __id "device_name";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_customer_gateway
        (aws_customer_gateway ?certificate_arn ?device_name ?id
           ?ip_address ?tags ?tags_all ~bgp_asn ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_arn ?device_name ?id ?ip_address
    ?tags ?tags_all ~bgp_asn ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_arn ?device_name ?id ?ip_address ?tags
      ?tags_all ~bgp_asn ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
