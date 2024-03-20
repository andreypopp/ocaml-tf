(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy_attribute = {
  name : string prop option; [@option]  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** policy_attribute *)

type aws_load_balancer_policy = {
  id : string prop option; [@option]  (** id *)
  load_balancer_name : string prop;  (** load_balancer_name *)
  policy_name : string prop;  (** policy_name *)
  policy_type_name : string prop;  (** policy_type_name *)
  policy_attribute : policy_attribute list;
}
[@@deriving yojson_of]
(** aws_load_balancer_policy *)

let policy_attribute ?name ?value () : policy_attribute =
  { name; value }

let aws_load_balancer_policy ?id ~load_balancer_name ~policy_name
    ~policy_type_name ~policy_attribute () : aws_load_balancer_policy
    =
  {
    id;
    load_balancer_name;
    policy_name;
    policy_type_name;
    policy_attribute;
  }

type t = {
  id : string prop;
  load_balancer_name : string prop;
  policy_name : string prop;
  policy_type_name : string prop;
}

let make ?id ~load_balancer_name ~policy_name ~policy_type_name
    ~policy_attribute __id =
  let __type = "aws_load_balancer_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       load_balancer_name =
         Prop.computed __type __id "load_balancer_name";
       policy_name = Prop.computed __type __id "policy_name";
       policy_type_name =
         Prop.computed __type __id "policy_type_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_load_balancer_policy
        (aws_load_balancer_policy ?id ~load_balancer_name
           ~policy_name ~policy_type_name ~policy_attribute ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~load_balancer_name ~policy_name
    ~policy_type_name ~policy_attribute __id =
  let (r : _ Tf_core.resource) =
    make ?id ~load_balancer_name ~policy_name ~policy_type_name
      ~policy_attribute __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
