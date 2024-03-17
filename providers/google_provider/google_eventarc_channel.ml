(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_eventarc_channel__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_eventarc_channel__timeouts *)

type google_eventarc_channel = {
  crypto_key_name : string option; [@option]
      (** Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`. *)
  id : string option; [@option]  (** id *)
  location : string;  (** The location for the resource *)
  name : string;
      (** Required. The resource name of the channel. Must be unique within the location on the project. *)
  project : string option; [@option]
      (** The project for the resource *)
  third_party_provider : string option; [@option]
      (** The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`. *)
  timeouts : google_eventarc_channel__timeouts option;
}
[@@deriving yojson_of]
(** google_eventarc_channel *)

let google_eventarc_channel ?crypto_key_name ?id ?project
    ?third_party_provider ?timeouts ~location ~name __resource_id =
  let __resource_type = "google_eventarc_channel" in
  let __resource =
    {
      crypto_key_name;
      id;
      location;
      name;
      project;
      third_party_provider;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_eventarc_channel __resource);
  ()
