(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_app_cookie_stickiness_policy = {
  cookie_name : string;  (** cookie_name *)
  id : string option; [@option]  (** id *)
  lb_port : float;  (** lb_port *)
  load_balancer : string;  (** load_balancer *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_app_cookie_stickiness_policy *)

let aws_app_cookie_stickiness_policy ?id ~cookie_name ~lb_port
    ~load_balancer ~name __resource_id =
  let __resource_type = "aws_app_cookie_stickiness_policy" in
  let __resource =
    { cookie_name; id; lb_port; load_balancer; name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_app_cookie_stickiness_policy __resource);
  ()
