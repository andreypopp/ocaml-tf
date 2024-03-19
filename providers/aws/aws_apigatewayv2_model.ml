(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?id ~api_id ~content_type ~name
    ~schema __resource_id =
  let __resource_type = "aws_apigatewayv2_model" in
  let __resource =
    aws_apigatewayv2_model ?description ?id ~api_id ~content_type
      ~name ~schema ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_model __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       schema = Prop.computed __resource_type __resource_id "schema";
     }
      : t)
  in
  __resource_attributes
