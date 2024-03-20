(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_lb_cookie_stickiness_policy ?cookie_expiration_period ?id
    ~lb_port ~load_balancer ~name () :
    aws_lb_cookie_stickiness_policy =
  { cookie_expiration_period; id; lb_port; load_balancer; name }

type t = {
  cookie_expiration_period : float prop;
  id : string prop;
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
}

let make ?cookie_expiration_period ?id ~lb_port ~load_balancer ~name
    __id =
  let __type = "aws_lb_cookie_stickiness_policy" in
  let __attrs =
    ({
       cookie_expiration_period =
         Prop.computed __type __id "cookie_expiration_period";
       id = Prop.computed __type __id "id";
       lb_port = Prop.computed __type __id "lb_port";
       load_balancer = Prop.computed __type __id "load_balancer";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_cookie_stickiness_policy
        (aws_lb_cookie_stickiness_policy ?cookie_expiration_period
           ?id ~lb_port ~load_balancer ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?cookie_expiration_period ?id ~lb_port
    ~load_balancer ~name __id =
  let (r : _ Tf_core.resource) =
    make ?cookie_expiration_period ?id ~lb_port ~load_balancer ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
