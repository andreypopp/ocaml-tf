(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_lb_stickiness_policy = {
  cookie_duration : float prop;  (** cookie_duration *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  lb_name : string prop;  (** lb_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_stickiness_policy *)

type t = {
  cookie_duration : float prop;
  enabled : bool prop;
  id : string prop;
  lb_name : string prop;
}

let aws_lightsail_lb_stickiness_policy ?id ~cookie_duration ~enabled
    ~lb_name __resource_id =
  let __resource_type = "aws_lightsail_lb_stickiness_policy" in
  let __resource =
    ({ cookie_duration; enabled; id; lb_name }
      : aws_lightsail_lb_stickiness_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb_stickiness_policy __resource);
  let __resource_attributes =
    ({
       cookie_duration =
         Prop.computed __resource_type __resource_id
           "cookie_duration";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       lb_name =
         Prop.computed __resource_type __resource_id "lb_name";
     }
      : t)
  in
  __resource_attributes
