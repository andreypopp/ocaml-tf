(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_api_gateway_model = {
  content_type : string;  (** content_type *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  rest_api_id : string;  (** rest_api_id *)
  schema : string option; [@option]  (** schema *)
}
[@@deriving yojson_of]
(** aws_api_gateway_model *)

let aws_api_gateway_model ?description ?schema ~content_type ~name
    ~rest_api_id __resource_id =
  let __resource_type = "aws_api_gateway_model" in
  let __resource =
    { content_type; description; name; rest_api_id; schema }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_model __resource);
  ()
