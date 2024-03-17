(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dialogflow_cx_security_settings__audio_export_settings = {
  audio_export_pattern : string option; [@option]
      (** Filename pattern for exported audio. *)
  audio_format : string option; [@option]
      (** File format for exported audio file. Currently only in telephony recordings.
* MULAW: G.711 mu-law PCM with 8kHz sample rate.
* MP3: MP3 file format.
* OGG: OGG Vorbis. Possible values: [MULAW, MP3, OGG] *)
  enable_audio_redaction : bool option; [@option]
      (** Enable audio redaction if it is true. *)
  gcs_bucket : string option; [@option]
      (** Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy. *)
}
[@@deriving yojson_of]
(** Controls audio export settings for post-conversation analytics when ingesting audio to conversations.
If retention_strategy is set to REMOVE_AFTER_CONVERSATION or gcs_bucket is empty, audio export is disabled.
If audio export is enabled, audio is recorded and saved to gcs_bucket, subject to retention policy of gcs_bucket.
This setting won't effect audio input for implicit sessions via [Sessions.DetectIntent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#google.cloud.dialogflow.cx.v3.Sessions.DetectIntent). *)

type google_dialogflow_cx_security_settings__insights_export_settings = {
  enable_insights_export : bool;
      (** If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers. *)
}
[@@deriving yojson_of]
(** Controls conversation exporting settings to Insights after conversation is completed.
If retentionStrategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here. *)

type google_dialogflow_cx_security_settings__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_cx_security_settings__timeouts *)

type google_dialogflow_cx_security_settings = {
  deidentify_template : string option; [@option]
      (** [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. If empty, Dialogflow replaces sensitive info with [redacted] text.
Note: deidentifyTemplate must be located in the same region as the SecuritySettings.
Format: projects/<Project ID>/locations/<Location ID>/deidentifyTemplates/<Template ID> OR organizations/<Organization ID>/locations/<Location ID>/deidentifyTemplates/<Template ID> *)
  display_name : string;
      (** The human-readable name of the security settings, unique within the location. *)
  id : string option; [@option]  (** id *)
  inspect_template : string option; [@option]
      (** [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. If empty, we use the default DLP inspect config.
Note: inspectTemplate must be located in the same region as the SecuritySettings.
Format: projects/<Project ID>/locations/<Location ID>/inspectTemplates/<Template ID> OR organizations/<Organization ID>/locations/<Location ID>/inspectTemplates/<Template ID> *)
  location : string;
      (** The location these settings are located in. Settings can only be applied to an agent in the same location.
See [Available Regions](https://cloud.google.com/dialogflow/cx/docs/concept/region#avail) for a list of supported locations. *)
  project : string option; [@option]  (** project *)
  purge_data_types : string list option; [@option]
      (** List of types of data to remove when retention settings triggers purge. Possible values: [DIALOGFLOW_HISTORY] *)
  redaction_scope : string option; [@option]
      (** Defines what types of data to redact. If not set, defaults to not redacting any kind of data.
* REDACT_DISK_STORAGE: On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk. Possible values: [REDACT_DISK_STORAGE] *)
  redaction_strategy : string option; [@option]
      (** Defines how we redact data. If not set, defaults to not redacting.
* REDACT_WITH_SERVICE: Call redaction service to clean up the data to be persisted. Possible values: [REDACT_WITH_SERVICE] *)
  retention_strategy : string option; [@option]
      (** Defines how long we retain persisted data that contains sensitive info. Only one of 'retention_window_days' and 'retention_strategy' may be set.
* REMOVE_AFTER_CONVERSATION: Removes data when the conversation ends. If there is no conversation explicitly established, a default conversation ends when the corresponding Dialogflow session ends. Possible values: [REMOVE_AFTER_CONVERSATION] *)
  retention_window_days : float option; [@option]
      (** Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.
Only one of 'retention_window_days' and 'retention_strategy' may be set. *)
  audio_export_settings :
    google_dialogflow_cx_security_settings__audio_export_settings
    list;
  insights_export_settings :
    google_dialogflow_cx_security_settings__insights_export_settings
    list;
  timeouts : google_dialogflow_cx_security_settings__timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_security_settings *)

let google_dialogflow_cx_security_settings ?deidentify_template ?id
    ?inspect_template ?project ?purge_data_types ?redaction_scope
    ?redaction_strategy ?retention_strategy ?retention_window_days
    ?timeouts ~display_name ~location ~audio_export_settings
    ~insights_export_settings __resource_id =
  let __resource_type = "google_dialogflow_cx_security_settings" in
  let __resource =
    {
      deidentify_template;
      display_name;
      id;
      inspect_template;
      location;
      project;
      purge_data_types;
      redaction_scope;
      redaction_strategy;
      retention_strategy;
      retention_window_days;
      audio_export_settings;
      insights_export_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_cx_security_settings __resource);
  ()
