(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_app_cookie_stickiness_policy = {
  cookie_name : string prop;  (** cookie_name *)
  id : string prop option; [@option]  (** id *)
  lb_port : float prop;  (** lb_port *)
  load_balancer : string prop;  (** load_balancer *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_app_cookie_stickiness_policy *)

let aws_app_cookie_stickiness_policy ?id ~cookie_name ~lb_port
    ~load_balancer ~name () : aws_app_cookie_stickiness_policy =
  { cookie_name; id; lb_port; load_balancer; name }

type t = {
  cookie_name : string prop;
  id : string prop;
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
}

let register ?tf_module ?id ~cookie_name ~lb_port ~load_balancer
    ~name __resource_id =
  let __resource_type = "aws_app_cookie_stickiness_policy" in
  let __resource =
    aws_app_cookie_stickiness_policy ?id ~cookie_name ~lb_port
      ~load_balancer ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_app_cookie_stickiness_policy __resource);
  let __resource_attributes =
    ({
       cookie_name =
         Prop.computed __resource_type __resource_id "cookie_name";
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
