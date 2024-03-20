(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpn_gateway = {
  amazon_side_asn : string prop option; [@option]
      (** amazon_side_asn *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_vpn_gateway *)

let aws_vpn_gateway ?amazon_side_asn ?availability_zone ?id ?tags
    ?tags_all ?vpc_id () : aws_vpn_gateway =
  { amazon_side_asn; availability_zone; id; tags; tags_all; vpc_id }

type t = {
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
