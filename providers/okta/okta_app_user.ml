(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_user = {
  app_id : string prop;
  id : string prop option; [@option]
  password : string prop option; [@option]
  profile : string prop option; [@option]
  retain_assignment : bool prop option; [@option]
  user_id : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_user) -> ()

let yojson_of_okta_app_user =
  (function
   | {
       app_id = v_app_id;
       id = v_id;
       password = v_password;
       profile = v_profile;
       retain_assignment = v_retain_assignment;
       user_id = v_user_id;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
       in
       let bnds =
         match v_retain_assignment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "retain_assignment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_user

[@@@deriving.end]

let okta_app_user ?id ?password ?profile ?retain_assignment ?username
    ~app_id ~user_id () : okta_app_user =
  {
    app_id;
    id;
    password;
    profile;
    retain_assignment;
    user_id;
    username;
  }

type t = {
  tf_name : string;
  app_id : string prop;
  has_shared_username : bool prop;
  id : string prop;
  password : string prop;
  profile : string prop;
  retain_assignment : bool prop;
  user_id : string prop;
  username : string prop;
}

let make ?id ?password ?profile ?retain_assignment ?username ~app_id
    ~user_id __id =
  let __type = "okta_app_user" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       has_shared_username =
         Prop.computed __type __id "has_shared_username";
       id = Prop.computed __type __id "id";
       password = Prop.computed __type __id "password";
       profile = Prop.computed __type __id "profile";
       retain_assignment =
         Prop.computed __type __id "retain_assignment";
       user_id = Prop.computed __type __id "user_id";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_user
        (okta_app_user ?id ?password ?profile ?retain_assignment
           ?username ~app_id ~user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?password ?profile ?retain_assignment
    ?username ~app_id ~user_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?password ?profile ?retain_assignment ?username ~app_id
      ~user_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
