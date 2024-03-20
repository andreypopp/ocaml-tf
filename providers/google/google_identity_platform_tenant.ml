(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_identity_platform_tenant = {
  allow_password_signup : bool prop option; [@option]
      (** Whether to allow email/password user authentication. *)
  disable_auth : bool prop option; [@option]
      (** Whether authentication is disabled for the tenant. If true, the users under
the disabled tenant are not allowed to sign-in. Admins of the disabled tenant
are not able to manage its users. *)
  display_name : string prop;
      (** Human friendly display name of the tenant. *)
  enable_email_link_signin : bool prop option; [@option]
      (** Whether to enable email link user authentication. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_tenant *)

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
