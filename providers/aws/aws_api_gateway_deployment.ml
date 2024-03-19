(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?id ?stage_description
    ?stage_name ?triggers ?variables ~rest_api_id __resource_id =
  let __resource_type = "aws_api_gateway_deployment" in
  let __resource =
    aws_api_gateway_deployment ?description ?id ?stage_description
      ?stage_name ?triggers ?variables ~rest_api_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_deployment __resource);
  let __resource_attributes =
    ({
       created_date =
         Prop.computed __resource_type __resource_id "created_date";
       description =
         Prop.computed __resource_type __resource_id "description";
       execution_arn =
         Prop.computed __resource_type __resource_id "execution_arn";
       id = Prop.computed __resource_type __resource_id "id";
       invoke_url =
         Prop.computed __resource_type __resource_id "invoke_url";
       rest_api_id =
         Prop.computed __resource_type __resource_id "rest_api_id";
       stage_description =
         Prop.computed __resource_type __resource_id
           "stage_description";
       stage_name =
         Prop.computed __resource_type __resource_id "stage_name";
       triggers =
         Prop.computed __resource_type __resource_id "triggers";
       variables =
         Prop.computed __resource_type __resource_id "variables";
     }
      : t)
  in
  __resource_attributes
