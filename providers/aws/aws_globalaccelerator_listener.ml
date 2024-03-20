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

type aws_globalaccelerator_listener = {
  accelerator_arn : string prop;  (** accelerator_arn *)
  client_affinity : string prop option; [@option]
      (** client_affinity *)
  id : string prop option; [@option]  (** id *)
  protocol : string prop;  (** protocol *)
  port_range : port_range list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_listener *)

let port_range ?from_port ?to_port () : port_range =
  { from_port; to_port }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_globalaccelerator_listener ?client_affinity ?id ?timeouts
    ~accelerator_arn ~protocol ~port_range () :
    aws_globalaccelerator_listener =
  {
    accelerator_arn;
    client_affinity;
    id;
    protocol;
    port_range;
    timeouts;
  }

type t = {
  accelerator_arn : string prop;
  client_affinity : string prop;
  id : string prop;
  protocol : string prop;
}

let make ?client_affinity ?id ?timeouts ~accelerator_arn ~protocol
    ~port_range __id =
  let __type = "aws_globalaccelerator_listener" in
  let __attrs =
    ({
       accelerator_arn = Prop.computed __type __id "accelerator_arn";
       client_affinity = Prop.computed __type __id "client_affinity";
       id = Prop.computed __type __id "id";
       protocol = Prop.computed __type __id "protocol";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_listener
        (aws_globalaccelerator_listener ?client_affinity ?id
           ?timeouts ~accelerator_arn ~protocol ~port_range ());
    attrs = __attrs;
  }

let register ?tf_module ?client_affinity ?id ?timeouts
    ~accelerator_arn ~protocol ~port_range __id =
  let (r : _ Tf_core.resource) =
    make ?client_affinity ?id ?timeouts ~accelerator_arn ~protocol
      ~port_range __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
