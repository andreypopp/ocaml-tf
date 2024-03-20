(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_identity_platform_default_supported_idp_config *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_default_supported_idp_config ?enabled
    ?id ?project ?timeouts ~client_id ~client_secret ~idp_id () :
    google_identity_platform_default_supported_idp_config =
  {
    client_id;
    client_secret;
    enabled;
    id;
    idp_id;
    project;
    timeouts;
  }

type t = {
  client_id : string prop;
  client_secret : string prop;
  enabled : bool prop;
  id : string prop;
  idp_id : string prop;
  name : string prop;
  project : string prop;
}

let make ?enabled ?id ?project ?timeouts ~client_id ~client_secret
    ~idp_id __id =
  let __type =
    "google_identity_platform_default_supported_idp_config"
  in
  let __attrs =
    ({
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       idp_id = Prop.computed __type __id "idp_id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_identity_platform_default_supported_idp_config
        (google_identity_platform_default_supported_idp_config
           ?enabled ?id ?project ?timeouts ~client_id ~client_secret
           ~idp_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?project ?timeouts ~client_id
    ~client_secret ~idp_id __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?project ?timeouts ~client_id ~client_secret
      ~idp_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
