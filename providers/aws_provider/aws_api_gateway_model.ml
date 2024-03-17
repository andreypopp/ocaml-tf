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

type t = {
  content_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  rest_api_id : string prop;
  schema : string prop;
}

let aws_api_gateway_model ?description ?id ?schema ~content_type
    ~name ~rest_api_id __resource_id =
  let __resource_type = "aws_api_gateway_model" in
  let __resource =
    ({ content_type; description; id; name; rest_api_id; schema }
      : aws_api_gateway_model)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_model __resource);
  let __resource_attributes =
    ({
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       rest_api_id =
         Prop.computed __resource_type __resource_id "rest_api_id";
       schema = Prop.computed __resource_type __resource_id "schema";
     }
      : t)
  in
  __resource_attributes
