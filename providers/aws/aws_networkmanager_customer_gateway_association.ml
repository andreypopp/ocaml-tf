(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_customer_gateway_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_customer_gateway_association__timeouts *)

type aws_networkmanager_customer_gateway_association = {
  customer_gateway_arn : string prop;  (** customer_gateway_arn *)
  device_id : string prop;  (** device_id *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  link_id : string prop option; [@option]  (** link_id *)
  timeouts :
    aws_networkmanager_customer_gateway_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_customer_gateway_association *)

type t = {
  customer_gateway_arn : string prop;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
}

let aws_networkmanager_customer_gateway_association ?id ?link_id
    ?timeouts ~customer_gateway_arn ~device_id ~global_network_id
    __resource_id =
  let __resource_type =
    "aws_networkmanager_customer_gateway_association"
  in
  let __resource =
    ({
       customer_gateway_arn;
       device_id;
       global_network_id;
       id;
       link_id;
       timeouts;
     }
      : aws_networkmanager_customer_gateway_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_customer_gateway_association
       __resource);
  let __resource_attributes =
    ({
       customer_gateway_arn =
         Prop.computed __resource_type __resource_id
           "customer_gateway_arn";
       device_id =
         Prop.computed __resource_type __resource_id "device_id";
       global_network_id =
         Prop.computed __resource_type __resource_id
           "global_network_id";
       id = Prop.computed __resource_type __resource_id "id";
       link_id =
         Prop.computed __resource_type __resource_id "link_id";
     }
      : t)
  in
  __resource_attributes
