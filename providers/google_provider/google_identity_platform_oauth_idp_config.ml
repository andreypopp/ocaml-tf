(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_identity_platform_oauth_idp_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_identity_platform_oauth_idp_config__timeouts *)

type google_identity_platform_oauth_idp_config = {
  client_id : string;  (** The client id of an OAuth client. *)
  client_secret : string option; [@option]
      (** The client secret of the OAuth client, to enable OIDC code flow. *)
  display_name : string option; [@option]
      (** Human friendly display name. *)
  enabled : bool option; [@option]
      (** If this config allows users to sign in with the provider. *)
  id : string option; [@option]  (** id *)
  issuer : string;  (** For OIDC Idps, the issuer identifier. *)
  name : string;
      (** The name of the OauthIdpConfig. Must start with 'oidc.'. *)
  project : string option; [@option]  (** project *)
  timeouts :
    google_identity_platform_oauth_idp_config__timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_oauth_idp_config *)

let google_identity_platform_oauth_idp_config ?client_secret
    ?display_name ?enabled ?id ?project ?timeouts ~client_id ~issuer
    ~name __resource_id =
  let __resource_type =
    "google_identity_platform_oauth_idp_config"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_identity_platform_oauth_idp_config __resource);
  ()
