(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_proxy_protocol_policy = {
  id : string prop option; [@option]  (** id *)
  instance_ports : string prop list;  (** instance_ports *)
  load_balancer : string prop;  (** load_balancer *)
}
[@@deriving yojson_of]
(** aws_proxy_protocol_policy *)

let aws_proxy_protocol_policy ?id ~instance_ports ~load_balancer () :
    aws_proxy_protocol_policy =
  { id; instance_ports; load_balancer }

type t = {
  id : string prop;
  instance_ports : string list prop;
  load_balancer : string prop;
}

let make ?id ~instance_ports ~load_balancer __id =
  let __type = "aws_proxy_protocol_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_ports = Prop.computed __type __id "instance_ports";
       load_balancer = Prop.computed __type __id "load_balancer";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_proxy_protocol_policy
        (aws_proxy_protocol_policy ?id ~instance_ports ~load_balancer
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_ports ~load_balancer __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_ports ~load_balancer __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
