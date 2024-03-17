(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_model = {
  api_id : string;  (** api_id *)
  content_type : string;  (** content_type *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  schema : string;  (** schema *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_model *)

let aws_apigatewayv2_model ?description ?id ~api_id ~content_type
    ~name ~schema __resource_id =
  let __resource_type = "aws_apigatewayv2_model" in
  let __resource =
    { api_id; content_type; description; id; name; schema }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_model __resource);
  ()
