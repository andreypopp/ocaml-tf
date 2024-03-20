(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_rest_api_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  rest_api_id : string prop;  (** rest_api_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_rest_api_policy *)

let aws_api_gateway_rest_api_policy ?id ~policy ~rest_api_id () :
    aws_api_gateway_rest_api_policy =
  { id; policy; rest_api_id }

type t = {
  id : string prop;
  policy : string prop;
  rest_api_id : string prop;
}

let make ?id ~policy ~rest_api_id __id =
  let __type = "aws_api_gateway_rest_api_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       rest_api_id = Prop.computed __type __id "rest_api_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_rest_api_policy
        (aws_api_gateway_rest_api_policy ?id ~policy ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
