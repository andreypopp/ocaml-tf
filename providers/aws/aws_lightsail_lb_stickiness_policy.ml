(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_lb_stickiness_policy = {
  cookie_duration : float prop;
  enabled : bool prop;
  id : string prop option; [@option]
  lb_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_lb_stickiness_policy) -> ()

let yojson_of_aws_lightsail_lb_stickiness_policy =
  (function
   | {
       cookie_duration = v_cookie_duration;
       enabled = v_enabled;
       id = v_id;
       lb_name = v_lb_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lb_name in
         ("lb_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_cookie_duration
         in
         ("cookie_duration", arg) :: bnds
       in
       `Assoc bnds
    : aws_lightsail_lb_stickiness_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_lb_stickiness_policy

[@@@deriving.end]

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
