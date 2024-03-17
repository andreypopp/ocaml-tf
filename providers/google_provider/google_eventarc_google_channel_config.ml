(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_eventarc_google_channel_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_eventarc_google_channel_config__timeouts *)

type google_eventarc_google_channel_config = {
  crypto_key_name : string prop option; [@option]
      (** Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the resource *)
  name : string prop;
      (** Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  timeouts : google_eventarc_google_channel_config__timeouts option;
}
[@@deriving yojson_of]
(** google_eventarc_google_channel_config *)

let google_eventarc_google_channel_config ?crypto_key_name ?id
    ?project ?timeouts ~location ~name __resource_id =
  let __resource_type = "google_eventarc_google_channel_config" in
  let __resource =
    { crypto_key_name; id; location; name; project; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_eventarc_google_channel_config __resource);
  ()
