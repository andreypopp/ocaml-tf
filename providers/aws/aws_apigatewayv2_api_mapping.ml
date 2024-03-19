(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?api_mapping_key ?id ~api_id ~domain_name
    ~stage __resource_id =
  let __resource_type = "aws_apigatewayv2_api_mapping" in
  let __resource =
    aws_apigatewayv2_api_mapping ?api_mapping_key ?id ~api_id
      ~domain_name ~stage ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_api_mapping __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       api_mapping_key =
         Prop.computed __resource_type __resource_id
           "api_mapping_key";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       stage = Prop.computed __resource_type __resource_id "stage";
     }
      : t)
  in
  __resource_attributes
