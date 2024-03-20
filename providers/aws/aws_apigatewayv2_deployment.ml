(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_deployment = {
  api_id : string prop;  (** api_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_deployment *)

let aws_apigatewayv2_deployment ?description ?id ?triggers ~api_id ()
    : aws_apigatewayv2_deployment =
  { api_id; description; id; triggers }

type t = {
  api_id : string prop;
  auto_deployed : bool prop;
  description : string prop;
  id : string prop;
  triggers : (string * string) list prop;
}

let make ?description ?id ?triggers ~api_id __id =
  let __type = "aws_apigatewayv2_deployment" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       auto_deployed = Prop.computed __type __id "auto_deployed";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       triggers = Prop.computed __type __id "triggers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_deployment
        (aws_apigatewayv2_deployment ?description ?id ?triggers
           ~api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?triggers ~api_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?triggers ~api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
