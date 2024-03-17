(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_user_pool_ui_customization = {
  client_id : string prop option; [@option]  (** client_id *)
  css : string prop option; [@option]  (** css *)
  id : string prop option; [@option]  (** id *)
  image_file : string prop option; [@option]  (** image_file *)
  user_pool_id : string prop;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool_ui_customization *)

type t = {
  client_id : string prop;
  creation_date : string prop;
  css : string prop;
  css_version : string prop;
  id : string prop;
  image_file : string prop;
  image_url : string prop;
  last_modified_date : string prop;
  user_pool_id : string prop;
}

let aws_cognito_user_pool_ui_customization ?client_id ?css ?id
    ?image_file ~user_pool_id __resource_id =
  let __resource_type = "aws_cognito_user_pool_ui_customization" in
  let __resource =
    ({ client_id; css; id; image_file; user_pool_id }
      : aws_cognito_user_pool_ui_customization)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_user_pool_ui_customization __resource);
  let __resource_attributes =
    ({
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       creation_date =
         Prop.computed __resource_type __resource_id "creation_date";
       css = Prop.computed __resource_type __resource_id "css";
       css_version =
         Prop.computed __resource_type __resource_id "css_version";
       id = Prop.computed __resource_type __resource_id "id";
       image_file =
         Prop.computed __resource_type __resource_id "image_file";
       image_url =
         Prop.computed __resource_type __resource_id "image_url";
       last_modified_date =
         Prop.computed __resource_type __resource_id
           "last_modified_date";
       user_pool_id =
         Prop.computed __resource_type __resource_id "user_pool_id";
     }
      : t)
  in
  __resource_attributes
