(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dialogflow_cx_webhook__generic_web_service = {
  allowed_ca_certs : string list option; [@option]
      (** Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. *)
  request_headers : (string * string) list option; [@option]
      (** The HTTP request headers to send together with webhook requests. *)
  uri : string;
      (** Whether to use speech adaptation for speech recognition. *)
}
[@@deriving yojson_of]
(** Configuration for a generic web service. *)

type google_dialogflow_cx_webhook__service_directory__generic_web_service = {
  allowed_ca_certs : string list option; [@option]
      (** Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. *)
  request_headers : (string * string) list option; [@option]
      (** The HTTP request headers to send together with webhook requests. *)
  uri : string;
      (** Whether to use speech adaptation for speech recognition. *)
}
[@@deriving yojson_of]
(** The name of Service Directory service. *)

type google_dialogflow_cx_webhook__service_directory = {
  service : string;  (** The name of Service Directory service. *)
  generic_web_service :
    google_dialogflow_cx_webhook__service_directory__generic_web_service
    list;
}
[@@deriving yojson_of]
(** Configuration for a Service Directory service. *)

type google_dialogflow_cx_webhook__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_cx_webhook__timeouts *)

type google_dialogflow_cx_webhook = {
  disabled : bool option; [@option]
      (** Indicates whether the webhook is disabled. *)
  display_name : string;
      (** The human-readable name of the webhook, unique within the agent. *)
  enable_spell_correction : bool option; [@option]
      (** Indicates if automatic spell correction is enabled in detect intent requests. *)
  enable_stackdriver_logging : bool option; [@option]
      (** Determines whether this agent should log conversation queries. *)
  parent : string option; [@option]
      (** The agent to create a webhook for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>. *)
  security_settings : string option; [@option]
      (** Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>. *)
  timeout : string option; [@option]
      (** Webhook execution timeout. *)
  generic_web_service :
    google_dialogflow_cx_webhook__generic_web_service list;
  service_directory :
    google_dialogflow_cx_webhook__service_directory list;
  timeouts : google_dialogflow_cx_webhook__timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_webhook *)

let google_dialogflow_cx_webhook ?disabled ?enable_spell_correction
    ?enable_stackdriver_logging ?parent ?security_settings ?timeout
    ?timeouts ~display_name ~generic_web_service ~service_directory
    __resource_id =
  let __resource_type = "google_dialogflow_cx_webhook" in
  let __resource =
    {
      disabled;
      display_name;
      enable_spell_correction;
      enable_stackdriver_logging;
      parent;
      security_settings;
      timeout;
      generic_web_service;
      service_directory;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_cx_webhook __resource);
  ()
