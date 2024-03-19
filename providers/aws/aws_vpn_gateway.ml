(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?amazon_side_asn ?availability_zone ?id ?tags
    ?tags_all ?vpc_id __resource_id =
  let __resource_type = "aws_vpn_gateway" in
  let __resource =
    aws_vpn_gateway ?amazon_side_asn ?availability_zone ?id ?tags
      ?tags_all ?vpc_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_gateway __resource);
  let __resource_attributes =
    ({
       amazon_side_asn =
         Prop.computed __resource_type __resource_id
           "amazon_side_asn";
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
