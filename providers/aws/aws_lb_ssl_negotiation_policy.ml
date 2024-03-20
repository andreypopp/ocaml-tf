(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attribute = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** attribute *)

type aws_lb_ssl_negotiation_policy = {
  id : string prop option; [@option]  (** id *)
  lb_port : float prop;  (** lb_port *)
  load_balancer : string prop;  (** load_balancer *)
  name : string prop;  (** name *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
  attribute : attribute list;
}
[@@deriving yojson_of]
(** aws_lb_ssl_negotiation_policy *)

let attribute ~name ~value () : attribute = { name; value }

let aws_lb_ssl_negotiation_policy ?id ?triggers ~lb_port
    ~load_balancer ~name ~attribute () :
    aws_lb_ssl_negotiation_policy =
  { id; lb_port; load_balancer; name; triggers; attribute }

type t = {
  id : string prop;
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
  triggers : (string * string) list prop;
}

let make ?id ?triggers ~lb_port ~load_balancer ~name ~attribute __id
    =
  let __type = "aws_lb_ssl_negotiation_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       lb_port = Prop.computed __type __id "lb_port";
       load_balancer = Prop.computed __type __id "load_balancer";
       name = Prop.computed __type __id "name";
       triggers = Prop.computed __type __id "triggers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_ssl_negotiation_policy
        (aws_lb_ssl_negotiation_policy ?id ?triggers ~lb_port
           ~load_balancer ~name ~attribute ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?triggers ~lb_port ~load_balancer ~name
    ~attribute __id =
  let (r : _ Tf_core.resource) =
    make ?id ?triggers ~lb_port ~load_balancer ~name ~attribute __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
