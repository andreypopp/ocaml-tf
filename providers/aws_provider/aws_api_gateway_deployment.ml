(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_deployment = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  rest_api_id : string;  (** rest_api_id *)
  stage_description : string option; [@option]
      (** stage_description *)
  stage_name : string option; [@option]  (** stage_name *)
  triggers : (string * string) list option; [@option]
      (** triggers *)
  variables : (string * string) list option; [@option]
      (** variables *)
}
[@@deriving yojson_of]
(** aws_api_gateway_deployment *)

let aws_api_gateway_deployment ?description ?id ?stage_description
    ?stage_name ?triggers ?variables ~rest_api_id __resource_id =
  let __resource_type = "aws_api_gateway_deployment" in
  let __resource =
    {
      description;
      id;
      rest_api_id;
      stage_description;
      stage_name;
      triggers;
      variables;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_deployment __resource);
  ()
