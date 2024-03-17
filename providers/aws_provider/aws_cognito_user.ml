(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_user = {
  attributes : (string * string prop) list option; [@option]
      (** attributes *)
  client_metadata : (string * string prop) list option; [@option]
      (** client_metadata *)
  desired_delivery_mediums : string prop list option; [@option]
      (** desired_delivery_mediums *)
  enabled : bool prop option; [@option]  (** enabled *)
  force_alias_creation : bool prop option; [@option]
      (** force_alias_creation *)
  id : string prop option; [@option]  (** id *)
  message_action : string prop option; [@option]
      (** message_action *)
  password : string prop option; [@option]  (** password *)
  temporary_password : string prop option; [@option]
      (** temporary_password *)
  user_pool_id : string prop;  (** user_pool_id *)
  username : string prop;  (** username *)
  validation_data : (string * string prop) list option; [@option]
      (** validation_data *)
}
[@@deriving yojson_of]
(** aws_cognito_user *)

let aws_cognito_user ?attributes ?client_metadata
    ?desired_delivery_mediums ?enabled ?force_alias_creation ?id
    ?message_action ?password ?temporary_password ?validation_data
    ~user_pool_id ~username __resource_id =
  let __resource_type = "aws_cognito_user" in
  let __resource =
    {
      attributes;
      client_metadata;
      desired_delivery_mediums;
      enabled;
      force_alias_creation;
      id;
      message_action;
      password;
      temporary_password;
      user_pool_id;
      username;
      validation_data;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_user __resource);
  ()
