(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_resource = {
  id : string prop option; [@option]  (** id *)
  parent_id : string prop;  (** parent_id *)
  path_part : string prop;  (** path_part *)
  rest_api_id : string prop;  (** rest_api_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_resource *)

let aws_api_gateway_resource ?id ~parent_id ~path_part ~rest_api_id
    () : aws_api_gateway_resource =
  { id; parent_id; path_part; rest_api_id }

type t = {
  id : string prop;
  parent_id : string prop;
  path : string prop;
  path_part : string prop;
  rest_api_id : string prop;
}

let make ?id ~parent_id ~path_part ~rest_api_id __id =
  let __type = "aws_api_gateway_resource" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       parent_id = Prop.computed __type __id "parent_id";
       path = Prop.computed __type __id "path";
       path_part = Prop.computed __type __id "path_part";
       rest_api_id = Prop.computed __type __id "rest_api_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_resource
        (aws_api_gateway_resource ?id ~parent_id ~path_part
           ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~parent_id ~path_part ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~parent_id ~path_part ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
