(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_eventarc_google_channel_config = {
  crypto_key_name : string prop option; [@option]
      (** Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;
      (** Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_eventarc_google_channel_config *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_eventarc_google_channel_config ?crypto_key_name ?id
    ?project ?timeouts ~location ~name () :
    google_eventarc_google_channel_config =
  { crypto_key_name; id; location; name; project; timeouts }

type t = {
  crypto_key_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
}

let make ?crypto_key_name ?id ?project ?timeouts ~location ~name __id
    =
  let __type = "google_eventarc_google_channel_config" in
  let __attrs =
    ({
       crypto_key_name = Prop.computed __type __id "crypto_key_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_eventarc_google_channel_config
        (google_eventarc_google_channel_config ?crypto_key_name ?id
           ?project ?timeouts ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?crypto_key_name ?id ?project ?timeouts
    ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?crypto_key_name ?id ?project ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
