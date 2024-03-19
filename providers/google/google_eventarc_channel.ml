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

let register ?tf_module ?crypto_key_name ?id ?project
    ?third_party_provider ?timeouts ~location ~name __resource_id =
  let __resource_type = "google_eventarc_channel" in
  let __resource =
    google_eventarc_channel ?crypto_key_name ?id ?project
      ?third_party_provider ?timeouts ~location ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_eventarc_channel __resource);
  let __resource_attributes =
    ({
       activation_token =
         Prop.computed __resource_type __resource_id
           "activation_token";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       crypto_key_name =
         Prop.computed __resource_type __resource_id
           "crypto_key_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       pubsub_topic =
         Prop.computed __resource_type __resource_id "pubsub_topic";
       state = Prop.computed __resource_type __resource_id "state";
       third_party_provider =
         Prop.computed __resource_type __resource_id
           "third_party_provider";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
