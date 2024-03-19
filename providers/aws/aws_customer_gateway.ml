(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?certificate_arn ?device_name ?id ?ip_address
    ?tags ?tags_all ~bgp_asn ~type_ __resource_id =
  let __resource_type = "aws_customer_gateway" in
  let __resource =
    aws_customer_gateway ?certificate_arn ?device_name ?id
      ?ip_address ?tags ?tags_all ~bgp_asn ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_customer_gateway __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       bgp_asn =
         Prop.computed __resource_type __resource_id "bgp_asn";
       certificate_arn =
         Prop.computed __resource_type __resource_id
           "certificate_arn";
       device_name =
         Prop.computed __resource_type __resource_id "device_name";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
