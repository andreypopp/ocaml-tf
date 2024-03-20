(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_deployment = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  rest_api_id : string prop;  (** rest_api_id *)
  stage_description : string prop option; [@option]
      (** stage_description *)
  stage_name : string prop option; [@option]  (** stage_name *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
  variables : (string * string prop) list option; [@option]
      (** variables *)
}
[@@deriving yojson_of]
(** aws_api_gateway_deployment *)

let aws_api_gateway_deployment ?description ?id ?stage_description
    ?stage_name ?triggers ?variables ~rest_api_id () :
    aws_api_gateway_deployment =
  {
    description;
    id;
    rest_api_id;
    stage_description;
    stage_name;
    triggers;
    variables;
  }

type t = {
  created_date : string prop;
  description : string prop;
  execution_arn : string prop;
  id : string prop;
  invoke_url : string prop;
  rest_api_id : string prop;
  stage_description : string prop;
  stage_name : string prop;
  triggers : (string * string) list prop;
  variables : (string * string) list prop;
}

let make ?description ?id ?stage_description ?stage_name ?triggers
    ?variables ~rest_api_id __id =
  let __type = "aws_api_gateway_deployment" in
  let __attrs =
    ({
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       execution_arn = Prop.computed __type __id "execution_arn";
       id = Prop.computed __type __id "id";
       invoke_url = Prop.computed __type __id "invoke_url";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       stage_description =
         Prop.computed __type __id "stage_description";
       stage_name = Prop.computed __type __id "stage_name";
       triggers = Prop.computed __type __id "triggers";
       variables = Prop.computed __type __id "variables";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_deployment
        (aws_api_gateway_deployment ?description ?id
           ?stage_description ?stage_name ?triggers ?variables
           ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?stage_description
    ?stage_name ?triggers ?variables ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?stage_description ?stage_name ?triggers
      ?variables ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
