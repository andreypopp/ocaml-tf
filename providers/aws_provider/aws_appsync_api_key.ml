(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_api_key = {
  api_id : string prop;  (** api_id *)
  description : string prop option; [@option]  (** description *)
  expires : string prop option; [@option]  (** expires *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appsync_api_key *)

type t = {
  api_id : string prop;
  description : string prop;
  expires : string prop;
  id : string prop;
  key : string prop;
}

let aws_appsync_api_key ?description ?expires ?id ~api_id
    __resource_id =
  let __resource_type = "aws_appsync_api_key" in
  let __resource =
    ({ api_id; description; expires; id } : aws_appsync_api_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_api_key __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       expires =
         Prop.computed __resource_type __resource_id "expires";
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
     }
      : t)
  in
  __resource_attributes
