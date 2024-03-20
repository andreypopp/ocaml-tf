(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type location = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  name : string prop option; [@option]  (** name *)
  path : string prop option; [@option]  (** path *)
  status_code : string prop option; [@option]  (** status_code *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** location *)

type aws_api_gateway_documentation_part = {
  id : string prop option; [@option]  (** id *)
  properties : string prop;  (** properties *)
  rest_api_id : string prop;  (** rest_api_id *)
  location : location list;
}
[@@deriving yojson_of]
(** aws_api_gateway_documentation_part *)

let location ?method_ ?name ?path ?status_code ~type_ () : location =
  { method_; name; path; status_code; type_ }

let aws_api_gateway_documentation_part ?id ~properties ~rest_api_id
    ~location () : aws_api_gateway_documentation_part =
  { id; properties; rest_api_id; location }

type t = {
  id : string prop;
  properties : string prop;
  rest_api_id : string prop;
}

let make ?id ~properties ~rest_api_id ~location __id =
  let __type = "aws_api_gateway_documentation_part" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       properties = Prop.computed __type __id "properties";
       rest_api_id = Prop.computed __type __id "rest_api_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_documentation_part
        (aws_api_gateway_documentation_part ?id ~properties
           ~rest_api_id ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~properties ~rest_api_id ~location __id =
  let (r : _ Tf_core.resource) =
    make ?id ~properties ~rest_api_id ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
