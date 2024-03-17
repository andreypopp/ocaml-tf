(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_client_certificate = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_api_gateway_client_certificate *)

type t = {
  arn : string prop;
  created_date : string prop;
  description : string prop;
  expiration_date : string prop;
  id : string prop;
  pem_encoded_certificate : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_api_gateway_client_certificate ?description ?id ?tags
    ?tags_all __resource_id =
  let __resource_type = "aws_api_gateway_client_certificate" in
  let __resource =
    ({ description; id; tags; tags_all }
      : aws_api_gateway_client_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_client_certificate __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_date =
         Prop.computed __resource_type __resource_id "created_date";
       description =
         Prop.computed __resource_type __resource_id "description";
       expiration_date =
         Prop.computed __resource_type __resource_id
           "expiration_date";
       id = Prop.computed __resource_type __resource_id "id";
       pem_encoded_certificate =
         Prop.computed __resource_type __resource_id
           "pem_encoded_certificate";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
