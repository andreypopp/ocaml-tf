(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_eventarc_channel = {
  crypto_key_name : string prop option; [@option]
      (** Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;
      (** Required. The resource name of the channel. Must be unique within the location on the project. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  third_party_provider : string prop option; [@option]
      (** The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_eventarc_channel *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_eventarc_channel ?crypto_key_name ?id ?project
    ?third_party_provider ?timeouts ~location ~name () :
    google_eventarc_channel =
  {
    crypto_key_name;
    id;
    location;
    name;
    project;
    third_party_provider;
    timeouts;
  }

type t = {
  activation_token : string prop;
  create_time : string prop;
  crypto_key_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  pubsub_topic : string prop;
  state : string prop;
  third_party_provider : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?crypto_key_name ?id ?project ?third_party_provider
    ?timeouts ~location ~name __id =
  let __type = "google_eventarc_channel" in
  let __attrs =
    ({
       activation_token =
         Prop.computed __type __id "activation_token";
       create_time = Prop.computed __type __id "create_time";
       crypto_key_name = Prop.computed __type __id "crypto_key_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       pubsub_topic = Prop.computed __type __id "pubsub_topic";
       state = Prop.computed __type __id "state";
       third_party_provider =
         Prop.computed __type __id "third_party_provider";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_eventarc_channel
        (google_eventarc_channel ?crypto_key_name ?id ?project
           ?third_party_provider ?timeouts ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?crypto_key_name ?id ?project
    ?third_party_provider ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?crypto_key_name ?id ?project ?third_party_provider
      ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
