(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_usage_plan_key = {
  id : string prop option; [@option]  (** id *)
  key_id : string prop;  (** key_id *)
  key_type : string prop;  (** key_type *)
  usage_plan_id : string prop;  (** usage_plan_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_usage_plan_key *)

let aws_api_gateway_usage_plan_key ?id ~key_id ~key_type
    ~usage_plan_id () : aws_api_gateway_usage_plan_key =
  { id; key_id; key_type; usage_plan_id }

type t = {
  id : string prop;
  key_id : string prop;
  key_type : string prop;
  name : string prop;
  usage_plan_id : string prop;
  value : string prop;
}

let make ?id ~key_id ~key_type ~usage_plan_id __id =
  let __type = "aws_api_gateway_usage_plan_key" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       key_type = Prop.computed __type __id "key_type";
       name = Prop.computed __type __id "name";
       usage_plan_id = Prop.computed __type __id "usage_plan_id";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_usage_plan_key
        (aws_api_gateway_usage_plan_key ?id ~key_id ~key_type
           ~usage_plan_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key_id ~key_type ~usage_plan_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~key_id ~key_type ~usage_plan_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
