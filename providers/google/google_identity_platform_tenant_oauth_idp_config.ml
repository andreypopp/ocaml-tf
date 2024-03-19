(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_identity_platform_tenant_oauth_idp_config = {
  client_id : string prop;  (** The client id of an OAuth client. *)
  client_secret : string prop option; [@option]
      (** The client secret of the OAuth client, to enable OIDC code flow. *)
  display_name : string prop;  (** Human friendly display name. *)
  enabled : bool prop option; [@option]
      (** If this config allows users to sign in with the provider. *)
  id : string prop option; [@option]  (** id *)
  issuer : string prop;  (** For OIDC Idps, the issuer identifier. *)
  name : string prop;
      (** The name of the OauthIdpConfig. Must start with 'oidc.'. *)
  project : string prop option; [@option]  (** project *)
  tenant : string prop;
      (** The name of the tenant where this OIDC IDP configuration resource exists *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_tenant_oauth_idp_config *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_tenant_oauth_idp_config ?client_secret
    ?enabled ?id ?project ?timeouts ~client_id ~display_name ~issuer
    ~name ~tenant () :
    google_identity_platform_tenant_oauth_idp_config =
  {
    client_id;
    client_secret;
    display_name;
    enabled;
    id;
    issuer;
    name;
    project;
    tenant;
    timeouts;
  }

type t = {
  client_id : string prop;
  client_secret : string prop;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  project : string prop;
  tenant : string prop;
}

let register ?tf_module ?client_secret ?enabled ?id ?project
    ?timeouts ~client_id ~display_name ~issuer ~name ~tenant
    __resource_id =
  let __resource_type =
    "google_identity_platform_tenant_oauth_idp_config"
  in
  let __resource =
    google_identity_platform_tenant_oauth_idp_config ?client_secret
      ?enabled ?id ?project ?timeouts ~client_id ~display_name
      ~issuer ~name ~tenant ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_identity_platform_tenant_oauth_idp_config
       __resource);
  let __resource_attributes =
    ({
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       client_secret =
         Prop.computed __resource_type __resource_id "client_secret";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       issuer = Prop.computed __resource_type __resource_id "issuer";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       tenant = Prop.computed __resource_type __resource_id "tenant";
     }
      : t)
  in
  __resource_attributes
