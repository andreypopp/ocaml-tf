(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_lb_stickiness_policy = {
  cookie_duration : float;  (** cookie_duration *)
  enabled : bool;  (** enabled *)
  id : string option; [@option]  (** id *)
  lb_name : string;  (** lb_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_stickiness_policy *)

let aws_lightsail_lb_stickiness_policy ?id ~cookie_duration ~enabled
    ~lb_name __resource_id =
  let __resource_type = "aws_lightsail_lb_stickiness_policy" in
  let __resource = { cookie_duration; enabled; id; lb_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb_stickiness_policy __resource);
  ()
