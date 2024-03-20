(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_documentation_version = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  rest_api_id : string prop;  (** rest_api_id *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_api_gateway_documentation_version *)

let aws_api_gateway_documentation_version ?description ?id
    ~rest_api_id ~version () : aws_api_gateway_documentation_version
    =
  { description; id; rest_api_id; version }

type t = {
  description : string prop;
  id : string prop;
  rest_api_id : string prop;
  version : string prop;
}

let make ?description ?id ~rest_api_id ~version __id =
  let __type = "aws_api_gateway_documentation_version" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_documentation_version
        (aws_api_gateway_documentation_version ?description ?id
           ~rest_api_id ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~rest_api_id ~version __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~rest_api_id ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
