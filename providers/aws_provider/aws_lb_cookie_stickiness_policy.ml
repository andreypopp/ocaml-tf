(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_cookie_stickiness_policy = {
  cookie_expiration_period : float prop option; [@option]
      (** cookie_expiration_period *)
  id : string prop option; [@option]  (** id *)
  lb_port : float prop;  (** lb_port *)
  load_balancer : string prop;  (** load_balancer *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_lb_cookie_stickiness_policy *)

type t = {
  cookie_expiration_period : float prop;
  id : string prop;
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
}

let aws_lb_cookie_stickiness_policy ?cookie_expiration_period ?id
    ~lb_port ~load_balancer ~name __resource_id =
  let __resource_type = "aws_lb_cookie_stickiness_policy" in
  let __resource =
    ({ cookie_expiration_period; id; lb_port; load_balancer; name }
      : aws_lb_cookie_stickiness_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_cookie_stickiness_policy __resource);
  let __resource_attributes =
    ({
       cookie_expiration_period =
         Prop.computed __resource_type __resource_id
           "cookie_expiration_period";
       id = Prop.computed __resource_type __resource_id "id";
       lb_port =
         Prop.computed __resource_type __resource_id "lb_port";
       load_balancer =
         Prop.computed __resource_type __resource_id "load_balancer";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
