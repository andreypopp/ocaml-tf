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

let register ?tf_module ?crypto_key_name ?id ?project ?timeouts
    ~location ~name __resource_id =
  let __resource_type = "google_eventarc_google_channel_config" in
  let __resource =
    google_eventarc_google_channel_config ?crypto_key_name ?id
      ?project ?timeouts ~location ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_eventarc_google_channel_config __resource);
  let __resource_attributes =
    ({
       crypto_key_name =
         Prop.computed __resource_type __resource_id
           "crypto_key_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
