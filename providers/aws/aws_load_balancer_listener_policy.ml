(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_load_balancer_listener_policy = {
  id : string prop option; [@option]  (** id *)
  load_balancer_name : string prop;  (** load_balancer_name *)
  load_balancer_port : float prop;  (** load_balancer_port *)
  policy_names : string prop list option; [@option]
      (** policy_names *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
}
[@@deriving yojson_of]
(** aws_load_balancer_listener_policy *)

let aws_load_balancer_listener_policy ?id ?policy_names ?triggers
    ~load_balancer_name ~load_balancer_port () :
    aws_load_balancer_listener_policy =
  {
    id;
    load_balancer_name;
    load_balancer_port;
    policy_names;
    triggers;
  }

type t = {
  id : string prop;
  load_balancer_name : string prop;
  load_balancer_port : float prop;
  policy_names : string list prop;
  triggers : (string * string) list prop;
}

let make ?id ?policy_names ?triggers ~load_balancer_name
    ~load_balancer_port __id =
  let __type = "aws_load_balancer_listener_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       load_balancer_name =
         Prop.computed __type __id "load_balancer_name";
       load_balancer_port =
         Prop.computed __type __id "load_balancer_port";
       policy_names = Prop.computed __type __id "policy_names";
       triggers = Prop.computed __type __id "triggers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_load_balancer_listener_policy
        (aws_load_balancer_listener_policy ?id ?policy_names
           ?triggers ~load_balancer_name ~load_balancer_port ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy_names ?triggers
    ~load_balancer_name ~load_balancer_port __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy_names ?triggers ~load_balancer_name
      ~load_balancer_port __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
