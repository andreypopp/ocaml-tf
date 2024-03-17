(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_gateway_response = {
  id : string prop option; [@option]  (** id *)
  response_parameters : (string * string prop) list option; [@option]
      (** response_parameters *)
  response_templates : (string * string prop) list option; [@option]
      (** response_templates *)
  response_type : string prop;  (** response_type *)
  rest_api_id : string prop;  (** rest_api_id *)
  status_code : string prop option; [@option]  (** status_code *)
}
[@@deriving yojson_of]
(** aws_api_gateway_gateway_response *)

type t = {
  id : string prop;
  response_parameters : (string * string) list prop;
  response_templates : (string * string) list prop;
  response_type : string prop;
  rest_api_id : string prop;
  status_code : string prop;
}

let aws_api_gateway_gateway_response ?id ?response_parameters
    ?response_templates ?status_code ~response_type ~rest_api_id
    __resource_id =
  let __resource_type = "aws_api_gateway_gateway_response" in
  let __resource =
    ({
       id;
       response_parameters;
       response_templates;
       response_type;
       rest_api_id;
       status_code;
     }
      : aws_api_gateway_gateway_response)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_gateway_response __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       response_parameters =
         Prop.computed __resource_type __resource_id
           "response_parameters";
       response_templates =
         Prop.computed __resource_type __resource_id
           "response_templates";
       response_type =
         Prop.computed __resource_type __resource_id "response_type";
       rest_api_id =
         Prop.computed __resource_type __resource_id "rest_api_id";
       status_code =
         Prop.computed __resource_type __resource_id "status_code";
     }
      : t)
  in
  __resource_attributes
