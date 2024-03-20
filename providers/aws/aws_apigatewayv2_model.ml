(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_model = {
  api_id : string prop;  (** api_id *)
  content_type : string prop;  (** content_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  schema : string prop;  (** schema *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_model *)

let aws_apigatewayv2_model ?description ?id ~api_id ~content_type
    ~name ~schema () : aws_apigatewayv2_model =
  { api_id; content_type; description; id; name; schema }

type t = {
  api_id : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  schema : string prop;
}

let make ?description ?id ~api_id ~content_type ~name ~schema __id =
  let __type = "aws_apigatewayv2_model" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       content_type = Prop.computed __type __id "content_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       schema = Prop.computed __type __id "schema";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_model
        (aws_apigatewayv2_model ?description ?id ~api_id
           ~content_type ~name ~schema ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~api_id ~content_type ~name
    ~schema __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~api_id ~content_type ~name ~schema __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
