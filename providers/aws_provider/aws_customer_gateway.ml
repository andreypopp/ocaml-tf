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
    ?ip_address ?tags ?tags_all ~bgp_asn ~type_ __resource_id =
  let __resource_type = "aws_customer_gateway" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_customer_gateway __resource);
  ()
