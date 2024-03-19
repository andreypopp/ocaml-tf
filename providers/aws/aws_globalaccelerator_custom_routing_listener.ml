(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type port_range = {
  from_port : float prop option; [@option]  (** from_port *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** port_range *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_globalaccelerator_custom_routing_listener = {
  accelerator_arn : string prop;  (** accelerator_arn *)
  id : string prop option; [@option]  (** id *)
  port_range : port_range list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_custom_routing_listener *)

let port_range ?from_port ?to_port () : port_range =
  { from_port; to_port }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_globalaccelerator_custom_routing_listener ?id ?timeouts
    ~accelerator_arn ~port_range () :
    aws_globalaccelerator_custom_routing_listener =
  { accelerator_arn; id; port_range; timeouts }

type t = { accelerator_arn : string prop; id : string prop }

let register ?tf_module ?id ?timeouts ~accelerator_arn ~port_range
    __resource_id =
  let __resource_type =
    "aws_globalaccelerator_custom_routing_listener"
  in
  let __resource =
    aws_globalaccelerator_custom_routing_listener ?id ?timeouts
      ~accelerator_arn ~port_range ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_globalaccelerator_custom_routing_listener
       __resource);
  let __resource_attributes =
    ({
       accelerator_arn =
         Prop.computed __resource_type __resource_id
           "accelerator_arn";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
