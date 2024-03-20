(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_load_balancer_backend_server_policy = {
  id : string prop option; [@option]  (** id *)
  instance_port : float prop;  (** instance_port *)
  load_balancer_name : string prop;  (** load_balancer_name *)
  policy_names : string prop list option; [@option]
      (** policy_names *)
}
[@@deriving yojson_of]
(** aws_load_balancer_backend_server_policy *)

let aws_load_balancer_backend_server_policy ?id ?policy_names
    ~instance_port ~load_balancer_name () :
    aws_load_balancer_backend_server_policy =
  { id; instance_port; load_balancer_name; policy_names }

type t = {
  id : string prop;
  instance_port : float prop;
  load_balancer_name : string prop;
  policy_names : string list prop;
}

let make ?id ?policy_names ~instance_port ~load_balancer_name __id =
  let __type = "aws_load_balancer_backend_server_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_port = Prop.computed __type __id "instance_port";
       load_balancer_name =
         Prop.computed __type __id "load_balancer_name";
       policy_names = Prop.computed __type __id "policy_names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_load_balancer_backend_server_policy
        (aws_load_balancer_backend_server_policy ?id ?policy_names
           ~instance_port ~load_balancer_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy_names ~instance_port
    ~load_balancer_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy_names ~instance_port ~load_balancer_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
