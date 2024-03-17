(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_eventarc_google_channel_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_eventarc_google_channel_config__timeouts *)

type google_eventarc_google_channel_config = {
  crypto_key_name : string option; [@option]
      (** Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`. *)
  location : string;  (** The location for the resource *)
  name : string;
      (** Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`. *)
  timeouts : google_eventarc_google_channel_config__timeouts option;
}
[@@deriving yojson_of]
(** google_eventarc_google_channel_config *)

let google_eventarc_google_channel_config ?crypto_key_name ?timeouts
    ~location ~name __resource_id =
  let __resource_type = "google_eventarc_google_channel_config" in
  let __resource = { crypto_key_name; location; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_eventarc_google_channel_config __resource);
  ()
