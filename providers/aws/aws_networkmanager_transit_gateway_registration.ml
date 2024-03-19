(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_transit_gateway_registration = {
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  transit_gateway_arn : string prop;  (** transit_gateway_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_registration *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_transit_gateway_registration ?id ?timeouts
    ~global_network_id ~transit_gateway_arn () :
    aws_networkmanager_transit_gateway_registration =
  { global_network_id; id; transit_gateway_arn; timeouts }

type t = {
  global_network_id : string prop;
  id : string prop;
  transit_gateway_arn : string prop;
}

let register ?tf_module ?id ?timeouts ~global_network_id
    ~transit_gateway_arn __resource_id =
  let __resource_type =
    "aws_networkmanager_transit_gateway_registration"
  in
  let __resource =
    aws_networkmanager_transit_gateway_registration ?id ?timeouts
      ~global_network_id ~transit_gateway_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_transit_gateway_registration
       __resource);
  let __resource_attributes =
    ({
       global_network_id =
         Prop.computed __resource_type __resource_id
           "global_network_id";
       id = Prop.computed __resource_type __resource_id "id";
       transit_gateway_arn =
         Prop.computed __resource_type __resource_id
           "transit_gateway_arn";
     }
      : t)
  in
  __resource_attributes
