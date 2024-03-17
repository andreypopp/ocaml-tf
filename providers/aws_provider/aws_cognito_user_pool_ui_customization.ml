(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_user_pool_ui_customization = {
  client_id : string option; [@option]  (** client_id *)
  css : string option; [@option]  (** css *)
  id : string option; [@option]  (** id *)
  image_file : string option; [@option]  (** image_file *)
  user_pool_id : string;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool_ui_customization *)

let aws_cognito_user_pool_ui_customization ?client_id ?css ?id
    ?image_file ~user_pool_id __resource_id =
  let __resource_type = "aws_cognito_user_pool_ui_customization" in
  let __resource =
    { client_id; css; id; image_file; user_pool_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_user_pool_ui_customization __resource);
  ()
