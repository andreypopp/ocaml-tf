(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type port_range = {
  from_port : float prop option; [@option]  (** from_port *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** port_range *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_globalaccelerator_custom_routing_listener = {
  accelerator_arn : string prop;  (** accelerator_arn *)
  id : string prop option; [@option]  (** id *)
  port_range : port_range list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_custom_routing_listener *)

let port_range ?from_port ?to_port () : port_range =
  { from_port; to_port }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_globalaccelerator_custom_routing_listener ?id ?timeouts
    ~accelerator_arn ~port_range () :
    aws_globalaccelerator_custom_routing_listener =
  { accelerator_arn; id; port_range; timeouts }

type t = { accelerator_arn : string prop; id : string prop }

let make ?id ?timeouts ~accelerator_arn ~port_range __id =
  let __type = "aws_globalaccelerator_custom_routing_listener" in
  let __attrs =
    ({
       accelerator_arn = Prop.computed __type __id "accelerator_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_custom_routing_listener
        (aws_globalaccelerator_custom_routing_listener ?id ?timeouts
           ~accelerator_arn ~port_range ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~accelerator_arn ~port_range
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~accelerator_arn ~port_range __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
