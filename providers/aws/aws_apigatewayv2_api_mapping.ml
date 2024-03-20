(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_api_mapping = {
  api_id : string prop;  (** api_id *)
  api_mapping_key : string prop option; [@option]
      (** api_mapping_key *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  stage : string prop;  (** stage *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_api_mapping *)

let aws_apigatewayv2_api_mapping ?api_mapping_key ?id ~api_id
    ~domain_name ~stage () : aws_apigatewayv2_api_mapping =
  { api_id; api_mapping_key; domain_name; id; stage }

type t = {
  api_id : string prop;
  api_mapping_key : string prop;
  domain_name : string prop;
  id : string prop;
  stage : string prop;
}

let make ?api_mapping_key ?id ~api_id ~domain_name ~stage __id =
  let __type = "aws_apigatewayv2_api_mapping" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       api_mapping_key = Prop.computed __type __id "api_mapping_key";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       stage = Prop.computed __type __id "stage";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_api_mapping
        (aws_apigatewayv2_api_mapping ?api_mapping_key ?id ~api_id
           ~domain_name ~stage ());
    attrs = __attrs;
  }

let register ?tf_module ?api_mapping_key ?id ~api_id ~domain_name
    ~stage __id =
  let (r : _ Tf_core.resource) =
    make ?api_mapping_key ?id ~api_id ~domain_name ~stage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
