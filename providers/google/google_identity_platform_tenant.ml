(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_identity_platform_tenant = {
  allow_password_signup : bool prop option; [@option]
  disable_auth : bool prop option; [@option]
  display_name : string prop;
  enable_email_link_signin : bool prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_identity_platform_tenant) -> ()

let yojson_of_google_identity_platform_tenant =
  (function
   | {
       allow_password_signup = v_allow_password_signup;
       disable_auth = v_disable_auth;
       display_name = v_display_name;
       enable_email_link_signin = v_enable_email_link_signin;
       id = v_id;
       project = v_project;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         match v_enable_email_link_signin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_email_link_signin", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_disable_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_auth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_password_signup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_password_signup", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_identity_platform_tenant ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_identity_platform_tenant

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_tenant ?allow_password_signup
    ?disable_auth ?enable_email_link_signin ?id ?project ?timeouts
    ~display_name () : google_identity_platform_tenant =
  {
    allow_password_signup;
    disable_auth;
    display_name;
    enable_email_link_signin;
    id;
    project;
    timeouts;
  }

type t = {
  tf_name : string;
  allow_password_signup : bool prop;
  disable_auth : bool prop;
  display_name : string prop;
  enable_email_link_signin : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?allow_password_signup ?disable_auth
    ?enable_email_link_signin ?id ?project ?timeouts ~display_name
    __id =
  let __type = "google_identity_platform_tenant" in
  let __attrs =
    ({
       tf_name = __id;
       allow_password_signup =
         Prop.computed __type __id "allow_password_signup";
       disable_auth = Prop.computed __type __id "disable_auth";
       display_name = Prop.computed __type __id "display_name";
       enable_email_link_signin =
         Prop.computed __type __id "enable_email_link_signin";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_identity_platform_tenant
        (google_identity_platform_tenant ?allow_password_signup
           ?disable_auth ?enable_email_link_signin ?id ?project
           ?timeouts ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_password_signup ?disable_auth
    ?enable_email_link_signin ?id ?project ?timeouts ~display_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?allow_password_signup ?disable_auth
      ?enable_email_link_signin ?id ?project ?timeouts ~display_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
