(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_identity_platform_oauth_idp_config = {
  client_id : string prop;  (** The client id of an OAuth client. *)
  client_secret : string prop option; [@option]
      (** The client secret of the OAuth client, to enable OIDC code flow. *)
  display_name : string prop option; [@option]
      (** Human friendly display name. *)
  enabled : bool prop option; [@option]
      (** If this config allows users to sign in with the provider. *)
  id : string prop option; [@option]  (** id *)
  issuer : string prop;  (** For OIDC Idps, the issuer identifier. *)
  name : string prop;
      (** The name of the OauthIdpConfig. Must start with 'oidc.'. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_oauth_idp_config *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_oauth_idp_config ?client_secret
    ?display_name ?enabled ?id ?project ?timeouts ~client_id ~issuer
    ~name () : google_identity_platform_oauth_idp_config =
  {
    client_id;
    client_secret;
    display_name;
    enabled;
    id;
    issuer;
    name;
    project;
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
}

let make ?client_secret ?display_name ?enabled ?id ?project ?timeouts
    ~client_id ~issuer ~name __id =
  let __type = "google_identity_platform_oauth_idp_config" in
  let __attrs =
    ({
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_identity_platform_oauth_idp_config
        (google_identity_platform_oauth_idp_config ?client_secret
           ?display_name ?enabled ?id ?project ?timeouts ~client_id
           ~issuer ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?client_secret ?display_name ?enabled ?id
    ?project ?timeouts ~client_id ~issuer ~name __id =
  let (r : _ Tf_core.resource) =
    make ?client_secret ?display_name ?enabled ?id ?project ?timeouts
      ~client_id ~issuer ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
