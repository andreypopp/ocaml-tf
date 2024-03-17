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

type t = {
  attributes : (string * string) list prop;
  client_metadata : (string * string) list prop;
  creation_date : string prop;
  desired_delivery_mediums : string list prop;
  enabled : bool prop;
  force_alias_creation : bool prop;
  id : string prop;
  last_modified_date : string prop;
  message_action : string prop;
  mfa_setting_list : string list prop;
  password : string prop;
  preferred_mfa_setting : string prop;
  status : string prop;
  sub : string prop;
  temporary_password : string prop;
  user_pool_id : string prop;
  username : string prop;
  validation_data : (string * string) list prop;
}

let aws_cognito_user ?attributes ?client_metadata
    ?desired_delivery_mediums ?enabled ?force_alias_creation ?id
    ?message_action ?password ?temporary_password ?validation_data
    ~user_pool_id ~username __resource_id =
  let __resource_type = "aws_cognito_user" in
  let __resource =
    ({
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
      : aws_cognito_user)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_user __resource);
  let __resource_attributes =
    ({
       attributes =
         Prop.computed __resource_type __resource_id "attributes";
       client_metadata =
         Prop.computed __resource_type __resource_id
           "client_metadata";
       creation_date =
         Prop.computed __resource_type __resource_id "creation_date";
       desired_delivery_mediums =
         Prop.computed __resource_type __resource_id
           "desired_delivery_mediums";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       force_alias_creation =
         Prop.computed __resource_type __resource_id
           "force_alias_creation";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified_date =
         Prop.computed __resource_type __resource_id
           "last_modified_date";
       message_action =
         Prop.computed __resource_type __resource_id "message_action";
       mfa_setting_list =
         Prop.computed __resource_type __resource_id
           "mfa_setting_list";
       password =
         Prop.computed __resource_type __resource_id "password";
       preferred_mfa_setting =
         Prop.computed __resource_type __resource_id
           "preferred_mfa_setting";
       status = Prop.computed __resource_type __resource_id "status";
       sub = Prop.computed __resource_type __resource_id "sub";
       temporary_password =
         Prop.computed __resource_type __resource_id
           "temporary_password";
       user_pool_id =
         Prop.computed __resource_type __resource_id "user_pool_id";
       username =
         Prop.computed __resource_type __resource_id "username";
       validation_data =
         Prop.computed __resource_type __resource_id
           "validation_data";
     }
      : t)
  in
  __resource_attributes
