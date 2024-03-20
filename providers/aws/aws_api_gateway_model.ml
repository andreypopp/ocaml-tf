(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_model = {
  content_type : string prop;  (** content_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rest_api_id : string prop;  (** rest_api_id *)
  schema : string prop option; [@option]  (** schema *)
}
[@@deriving yojson_of]
(** aws_api_gateway_model *)

let aws_api_gateway_model ?description ?id ?schema ~content_type
    ~name ~rest_api_id () : aws_api_gateway_model =
  { content_type; description; id; name; rest_api_id; schema }

type t = {
  content_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  rest_api_id : string prop;
  schema : string prop;
}

let make ?description ?id ?schema ~content_type ~name ~rest_api_id
    __id =
  let __type = "aws_api_gateway_model" in
  let __attrs =
    ({
       content_type = Prop.computed __type __id "content_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       schema = Prop.computed __type __id "schema";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_model
        (aws_api_gateway_model ?description ?id ?schema ~content_type
           ~name ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?schema ~content_type ~name
    ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?schema ~content_type ~name ~rest_api_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
