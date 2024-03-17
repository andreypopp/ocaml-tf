(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_globalaccelerator_listener__port_range = {
  from_port : float prop option; [@option]  (** from_port *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_listener__port_range *)

type aws_globalaccelerator_listener__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_listener__timeouts *)

type aws_globalaccelerator_listener = {
  accelerator_arn : string prop;  (** accelerator_arn *)
  client_affinity : string prop option; [@option]
      (** client_affinity *)
  id : string prop option; [@option]  (** id *)
  protocol : string prop;  (** protocol *)
  port_range : aws_globalaccelerator_listener__port_range list;
  timeouts : aws_globalaccelerator_listener__timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_listener *)

type t = {
  accelerator_arn : string prop;
  client_affinity : string prop;
  id : string prop;
  protocol : string prop;
}

let aws_globalaccelerator_listener ?client_affinity ?id ?timeouts
    ~accelerator_arn ~protocol ~port_range __resource_id =
  let __resource_type = "aws_globalaccelerator_listener" in
  let __resource =
    ({
       accelerator_arn;
       client_affinity;
       id;
       protocol;
       port_range;
       timeouts;
     }
      : aws_globalaccelerator_listener)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_globalaccelerator_listener __resource);
  let __resource_attributes =
    ({
       accelerator_arn =
         Prop.computed __resource_type __resource_id
           "accelerator_arn";
       client_affinity =
         Prop.computed __resource_type __resource_id
           "client_affinity";
       id = Prop.computed __resource_type __resource_id "id";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
     }
      : t)
  in
  __resource_attributes
