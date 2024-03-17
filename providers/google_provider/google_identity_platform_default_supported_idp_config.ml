(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_identity_platform_default_supported_idp_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_identity_platform_default_supported_idp_config__timeouts *)

type google_identity_platform_default_supported_idp_config = {
  client_id : string prop;  (** OAuth client ID *)
  client_secret : string prop;  (** OAuth client secret *)
  enabled : bool prop option; [@option]
      (** If this IDP allows the user to sign in *)
  id : string prop option; [@option]  (** id *)
  idp_id : string prop;
      (** ID of the IDP. Possible values include:

* 'apple.com'

* 'facebook.com'

* 'gc.apple.com'

* 'github.com'

* 'google.com'

* 'linkedin.com'

* 'microsoft.com'

* 'playgames.google.com'

* 'twitter.com'

* 'yahoo.com' *)
  project : string prop option; [@option]  (** project *)
  timeouts :
    google_identity_platform_default_supported_idp_config__timeouts
    option;
}
[@@deriving yojson_of]
(** google_identity_platform_default_supported_idp_config *)

let google_identity_platform_default_supported_idp_config ?enabled
    ?id ?project ?timeouts ~client_id ~client_secret ~idp_id
    __resource_id =
  let __resource_type =
    "google_identity_platform_default_supported_idp_config"
  in
  let __resource =
    {
      client_id;
      client_secret;
      enabled;
      id;
      idp_id;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_identity_platform_default_supported_idp_config
       __resource);
  ()
