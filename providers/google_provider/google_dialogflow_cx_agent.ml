(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dialogflow_cx_agent__advanced_settings__audio_export_gcs_destination = {
  uri : string option; [@option]
      (** The Google Cloud Storage URI for the exported objects. Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.
Format: gs://bucket/object-name-or-prefix *)
}
[@@deriving yojson_of]
(** If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:
* Agent level
* Flow level *)

type google_dialogflow_cx_agent__advanced_settings__dtmf_settings = {
  enabled : bool option; [@option]
      (** If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a 3 was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance). *)
  finish_digit : string option; [@option]
      (** The digit that terminates a DTMF digit sequence. *)
  max_digits : float option; [@option]
      (** Max length of DTMF digits. *)
}
[@@deriving yojson_of]
(** Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:
* Agent level
* Flow level
* Page level
* Parameter level *)

type google_dialogflow_cx_agent__advanced_settings = {
  audio_export_gcs_destination :
    google_dialogflow_cx_agent__advanced_settings__audio_export_gcs_destination
    list;
  dtmf_settings :
    google_dialogflow_cx_agent__advanced_settings__dtmf_settings list;
}
[@@deriving yojson_of]
(** Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
Hierarchy: Agent->Flow->Page->Fulfillment/Parameter. *)

type google_dialogflow_cx_agent__git_integration_settings__github_settings = {
  access_token : string option; [@option]
      (** The access token used to authenticate the access to the GitHub repository. *)
  branches : string list option; [@option]
      (** A list of branches configured to be used from Dialogflow. *)
  display_name : string option; [@option]
      (** The unique repository display name for the GitHub repository. *)
  repository_uri : string option; [@option]
      (** The GitHub repository URI related to the agent. *)
  tracking_branch : string option; [@option]
      (** The branch of the GitHub repository tracked for this agent. *)
}
[@@deriving yojson_of]
(** Settings of integration with GitHub. *)

type google_dialogflow_cx_agent__git_integration_settings = {
  github_settings :
    google_dialogflow_cx_agent__git_integration_settings__github_settings
    list;
}
[@@deriving yojson_of]
(** Git integration settings for this agent. *)

type google_dialogflow_cx_agent__speech_to_text_settings = {
  enable_speech_adaptation : bool option; [@option]
      (** Whether to use speech adaptation for speech recognition. *)
}
[@@deriving yojson_of]
(** Settings related to speech recognition. *)

type google_dialogflow_cx_agent__text_to_speech_settings = {
  synthesize_speech_configs : string option; [@option]
      (** Configuration of how speech should be synthesized, mapping from [language](https://cloud.google.com/dialogflow/cx/docs/reference/language) to [SynthesizeSpeechConfig](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents#synthesizespeechconfig).
These settings affect:
* The phone gateway synthesize configuration set via Agent.text_to_speech_settings.
* How speech is synthesized when invoking session APIs. 'Agent.text_to_speech_settings' only applies if 'OutputAudioConfig.synthesize_speech_config' is not specified. *)
}
[@@deriving yojson_of]
(** Settings related to speech synthesizing. *)

type google_dialogflow_cx_agent__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_cx_agent__timeouts *)

type google_dialogflow_cx_agent = {
  avatar_uri : string option; [@option]
      (** The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted Web Demo integration. *)
  default_language_code : string;
      (** The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
for a list of the currently supported language codes. This field cannot be updated after creation. *)
  description : string option; [@option]
      (** The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected. *)
  display_name : string;
      (** The human-readable name of the agent, unique within the location. *)
  enable_spell_correction : bool option; [@option]
      (** Indicates if automatic spell correction is enabled in detect intent requests. *)
  enable_stackdriver_logging : bool option; [@option]
      (** Determines whether this agent should log conversation queries. *)
  location : string;
      (** The name of the location this agent is located in.

~> **Note:** The first time you are deploying an Agent in your project you must configure location settings.
 This is a one time step but at the moment you can only [configure location settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings) via the Dialogflow CX console.
 Another options is to use global location so you don't need to manually configure location settings. *)
  security_settings : string option; [@option]
      (** Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>. *)
  supported_language_codes : string list option; [@option]
      (** The list of all languages supported by this agent (except for the default_language_code). *)
  time_zone : string;
      (** The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
Europe/Paris. *)
  advanced_settings :
    google_dialogflow_cx_agent__advanced_settings list;
  git_integration_settings :
    google_dialogflow_cx_agent__git_integration_settings list;
  speech_to_text_settings :
    google_dialogflow_cx_agent__speech_to_text_settings list;
  text_to_speech_settings :
    google_dialogflow_cx_agent__text_to_speech_settings list;
  timeouts : google_dialogflow_cx_agent__timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_agent *)

let google_dialogflow_cx_agent ?avatar_uri ?description
    ?enable_spell_correction ?enable_stackdriver_logging
    ?security_settings ?supported_language_codes ?timeouts
    ~default_language_code ~display_name ~location ~time_zone
    ~advanced_settings ~git_integration_settings
    ~speech_to_text_settings ~text_to_speech_settings __resource_id =
  let __resource_type = "google_dialogflow_cx_agent" in
  let __resource =
    {
      avatar_uri;
      default_language_code;
      description;
      display_name;
      enable_spell_correction;
      enable_stackdriver_logging;
      location;
      security_settings;
      supported_language_codes;
      time_zone;
      advanced_settings;
      git_integration_settings;
      speech_to_text_settings;
      text_to_speech_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_cx_agent __resource);
  ()