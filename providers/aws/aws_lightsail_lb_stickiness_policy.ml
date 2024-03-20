(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_lb_stickiness_policy = {
  cookie_duration : float prop;  (** cookie_duration *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  lb_name : string prop;  (** lb_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_stickiness_policy *)

let aws_lightsail_lb_stickiness_policy ?id ~cookie_duration ~enabled
    ~lb_name () : aws_lightsail_lb_stickiness_policy =
  { cookie_duration; enabled; id; lb_name }

type t = {
  cookie_duration : float prop;
  enabled : bool prop;
  id : string prop;
  lb_name : string prop;
}

let make ?id ~cookie_duration ~enabled ~lb_name __id =
  let __type = "aws_lightsail_lb_stickiness_policy" in
  let __attrs =
    ({
       cookie_duration = Prop.computed __type __id "cookie_duration";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       lb_name = Prop.computed __type __id "lb_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_lb_stickiness_policy
        (aws_lightsail_lb_stickiness_policy ?id ~cookie_duration
           ~enabled ~lb_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cookie_duration ~enabled ~lb_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cookie_duration ~enabled ~lb_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
