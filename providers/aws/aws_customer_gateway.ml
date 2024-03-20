(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_customer_gateway = {
  bgp_asn : string prop;  (** bgp_asn *)
  certificate_arn : string prop option; [@option]
      (** certificate_arn *)
  device_name : string prop option; [@option]  (** device_name *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_customer_gateway *)

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
