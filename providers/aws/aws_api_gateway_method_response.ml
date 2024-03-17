(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_method_response = {
  http_method : string prop;  (** http_method *)
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
  response_models : (string * string prop) list option; [@option]
      (** response_models *)
  response_parameters : (string * bool prop) list option; [@option]
      (** response_parameters *)
  rest_api_id : string prop;  (** rest_api_id *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_api_gateway_method_response *)

type t = {
  http_method : string prop;
  id : string prop;
  resource_id : string prop;
  response_models : (string * string) list prop;
  response_parameters : (string * bool) list prop;
  rest_api_id : string prop;
  status_code : string prop;
}

let aws_api_gateway_method_response ?id ?response_models
    ?response_parameters ~http_method ~resource_id ~rest_api_id
    ~status_code __resource_id =
  let __resource_type = "aws_api_gateway_method_response" in
  let __resource =
    ({
       http_method;
       id;
       resource_id;
       response_models;
       response_parameters;
       rest_api_id;
       status_code;
     }
      : aws_api_gateway_method_response)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_method_response __resource);
  let __resource_attributes =
    ({
       http_method =
         Prop.computed __resource_type __resource_id "http_method";
       id = Prop.computed __resource_type __resource_id "id";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       response_models =
         Prop.computed __resource_type __resource_id
           "response_models";
       response_parameters =
         Prop.computed __resource_type __resource_id
           "response_parameters";
       rest_api_id =
         Prop.computed __resource_type __resource_id "rest_api_id";
       status_code =
         Prop.computed __resource_type __resource_id "status_code";
     }
      : t)
  in
  __resource_attributes
