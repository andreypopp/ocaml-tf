(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_customer_gateway = {
  bgp_asn : string;  (** bgp_asn *)
  certificate_arn : string option; [@option]  (** certificate_arn *)
  device_name : string option; [@option]  (** device_name *)
  ip_address : string option; [@option]  (** ip_address *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_customer_gateway *)

let aws_customer_gateway ?certificate_arn ?device_name ?ip_address
    ?tags ~bgp_asn ~type_ __resource_id =
  let __resource_type = "aws_customer_gateway" in
  let __resource =
    {
      bgp_asn;
      certificate_arn;
      device_name;
      ip_address;
      tags;
      type_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_customer_gateway __resource);
  ()
