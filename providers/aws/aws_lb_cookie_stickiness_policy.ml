(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lb_cookie_stickiness_policy = {
  cookie_expiration_period : float prop option; [@option]
  id : string prop option; [@option]
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lb_cookie_stickiness_policy) -> ()

let yojson_of_aws_lb_cookie_stickiness_policy =
  (function
   | {
       cookie_expiration_period = v_cookie_expiration_period;
       id = v_id;
       lb_port = v_lb_port;
       load_balancer = v_load_balancer;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_load_balancer in
         ("load_balancer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lb_port in
         ("lb_port", arg) :: bnds
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
         match v_cookie_expiration_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cookie_expiration_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lb_cookie_stickiness_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lb_cookie_stickiness_policy

[@@@deriving.end]

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
