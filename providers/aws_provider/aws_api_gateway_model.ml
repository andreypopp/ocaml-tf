(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_model = {
  content_type : string prop;  (** content_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rest_api_id : string prop;  (** rest_api_id *)
  schema : string prop option; [@option]  (** schema *)
}
[@@deriving yojson_of]
(** aws_api_gateway_model *)

let aws_api_gateway_model ?description ?id ?schema ~content_type
    ~name ~rest_api_id __resource_id =
  let __resource_type = "aws_api_gateway_model" in
  let __resource =
    { content_type; description; id; name; rest_api_id; schema }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_model __resource);
  ()
