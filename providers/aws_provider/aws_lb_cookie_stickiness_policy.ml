(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_cookie_stickiness_policy = {
  cookie_expiration_period : float option; [@option]
      (** cookie_expiration_period *)
  id : string option; [@option]  (** id *)
  lb_port : float;  (** lb_port *)
  load_balancer : string;  (** load_balancer *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_lb_cookie_stickiness_policy *)

let aws_lb_cookie_stickiness_policy ?cookie_expiration_period ?id
    ~lb_port ~load_balancer ~name __resource_id =
  let __resource_type = "aws_lb_cookie_stickiness_policy" in
  let __resource =
    { cookie_expiration_period; id; lb_port; load_balancer; name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_cookie_stickiness_policy __resource);
  ()
