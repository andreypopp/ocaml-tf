(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_identity_platform_tenant__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_identity_platform_tenant__timeouts *)

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
  timeouts : google_identity_platform_tenant__timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_tenant *)

let google_identity_platform_tenant ?allow_password_signup
    ?disable_auth ?enable_email_link_signin ?id ?project ?timeouts
    ~display_name __resource_id =
  let __resource_type = "google_identity_platform_tenant" in
  let __resource =
    {
      allow_password_signup;
      disable_auth;
      display_name;
      enable_email_link_signin;
      id;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_identity_platform_tenant __resource);
  ()
