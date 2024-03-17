(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_deployment = {
  api_id : string prop;  (** api_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_deployment *)

type t = {
  api_id : string prop;
  auto_deployed : bool prop;
  description : string prop;
  id : string prop;
  triggers : (string * string) list prop;
}

let aws_apigatewayv2_deployment ?description ?id ?triggers ~api_id
    __resource_id =
  let __resource_type = "aws_apigatewayv2_deployment" in
  let __resource =
    ({ api_id; description; id; triggers }
      : aws_apigatewayv2_deployment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_deployment __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       auto_deployed =
         Prop.computed __resource_type __resource_id "auto_deployed";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       triggers =
         Prop.computed __resource_type __resource_id "triggers";
     }
      : t)
  in
  __resource_attributes
