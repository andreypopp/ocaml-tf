(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_user = {
  attributes : string prop Tf_core.assoc option; [@option]
  client_metadata : string prop Tf_core.assoc option; [@option]
  desired_delivery_mediums : string prop list option; [@option]
  enabled : bool prop option; [@option]
  force_alias_creation : bool prop option; [@option]
  id : string prop option; [@option]
  message_action : string prop option; [@option]
  password : string prop option; [@option]
  temporary_password : string prop option; [@option]
  user_pool_id : string prop;
  username : string prop;
  validation_data : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user) -> ()

let yojson_of_aws_cognito_user =
  (function
   | {
       attributes = v_attributes;
       client_metadata = v_client_metadata;
       desired_delivery_mediums = v_desired_delivery_mediums;
       enabled = v_enabled;
       force_alias_creation = v_force_alias_creation;
       id = v_id;
       message_action = v_message_action;
       password = v_password;
       temporary_password = v_temporary_password;
       user_pool_id = v_user_pool_id;
       username = v_username;
       validation_data = v_validation_data;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_validation_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "validation_data", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       let bnds =
         match v_temporary_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "temporary_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_alias_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_alias_creation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_delivery_mediums with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "desired_delivery_mediums", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "client_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cognito_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user

[@@@deriving.end]

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
  tf_name : string;
  attributes : string Tf_core.assoc prop;
  client_metadata : string Tf_core.assoc prop;
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
  validation_data : string Tf_core.assoc prop;
}

let make ?attributes ?client_metadata ?desired_delivery_mediums
    ?enabled ?force_alias_creation ?id ?message_action ?password
    ?temporary_password ?validation_data ~user_pool_id ~username __id
    =
  let __type = "aws_cognito_user" in
  let __attrs =
    ({
       tf_name = __id;
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
