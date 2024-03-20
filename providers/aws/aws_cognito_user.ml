(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ~user_pool_id ~username () : aws_cognito_user =
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

let make ?attributes ?client_metadata ?desired_delivery_mediums
    ?enabled ?force_alias_creation ?id ?message_action ?password
    ?temporary_password ?validation_data ~user_pool_id ~username __id
    =
  let __type = "aws_cognito_user" in
  let __attrs =
    ({
       attributes = Prop.computed __type __id "attributes";
       client_metadata = Prop.computed __type __id "client_metadata";
       creation_date = Prop.computed __type __id "creation_date";
       desired_delivery_mediums =
         Prop.computed __type __id "desired_delivery_mediums";
       enabled = Prop.computed __type __id "enabled";
       force_alias_creation =
         Prop.computed __type __id "force_alias_creation";
       id = Prop.computed __type __id "id";
       last_modified_date =
         Prop.computed __type __id "last_modified_date";
       message_action = Prop.computed __type __id "message_action";
       mfa_setting_list =
         Prop.computed __type __id "mfa_setting_list";
       password = Prop.computed __type __id "password";
       preferred_mfa_setting =
         Prop.computed __type __id "preferred_mfa_setting";
       status = Prop.computed __type __id "status";
       sub = Prop.computed __type __id "sub";
       temporary_password =
         Prop.computed __type __id "temporary_password";
       user_pool_id = Prop.computed __type __id "user_pool_id";
       username = Prop.computed __type __id "username";
       validation_data = Prop.computed __type __id "validation_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user
        (aws_cognito_user ?attributes ?client_metadata
           ?desired_delivery_mediums ?enabled ?force_alias_creation
           ?id ?message_action ?password ?temporary_password
           ?validation_data ~user_pool_id ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?attributes ?client_metadata
    ?desired_delivery_mediums ?enabled ?force_alias_creation ?id
    ?message_action ?password ?temporary_password ?validation_data
    ~user_pool_id ~username __id =
  let (r : _ Tf_core.resource) =
    make ?attributes ?client_metadata ?desired_delivery_mediums
      ?enabled ?force_alias_creation ?id ?message_action ?password
      ?temporary_password ?validation_data ~user_pool_id ~username
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
