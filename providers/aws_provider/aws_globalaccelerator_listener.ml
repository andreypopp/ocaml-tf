(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_globalaccelerator_listener__port_range = {
  from_port : float option; [@option]  (** from_port *)
  to_port : float option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_listener__port_range *)

type aws_globalaccelerator_listener__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_listener__timeouts *)

type aws_globalaccelerator_listener = {
  accelerator_arn : string;  (** accelerator_arn *)
  client_affinity : string option; [@option]  (** client_affinity *)
  id : string option; [@option]  (** id *)
  protocol : string;  (** protocol *)
  port_range : aws_globalaccelerator_listener__port_range list;
  timeouts : aws_globalaccelerator_listener__timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_listener *)

let aws_globalaccelerator_listener ?client_affinity ?id ?timeouts
    ~accelerator_arn ~protocol ~port_range __resource_id =
  let __resource_type = "aws_globalaccelerator_listener" in
  let __resource =
    {
      accelerator_arn;
      client_affinity;
      id;
      protocol;
      port_range;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_globalaccelerator_listener __resource);
  ()
