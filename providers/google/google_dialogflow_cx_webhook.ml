(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type generic_web_service = {
  allowed_ca_certs : string prop list option; [@option]
      (** Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. *)
  request_headers : (string * string prop) list option; [@option]
      (** The HTTP request headers to send together with webhook requests. *)
  uri : string prop;
      (** Whether to use speech adaptation for speech recognition. *)
}
[@@deriving yojson_of]
(** Configuration for a generic web service. *)

type service_directory__generic_web_service = {
  allowed_ca_certs : string prop list option; [@option]
      (** Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. *)
  request_headers : (string * string prop) list option; [@option]
      (** The HTTP request headers to send together with webhook requests. *)
  uri : string prop;
      (** Whether to use speech adaptation for speech recognition. *)
}
[@@deriving yojson_of]
(** The name of Service Directory service. *)

type service_directory = {
  service : string prop;
      (** The name of Service Directory service. *)
  generic_web_service : service_directory__generic_web_service list;
}
[@@deriving yojson_of]
(** Configuration for a Service Directory service. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_dialogflow_cx_webhook = {
  disabled : bool prop option; [@option]
      (** Indicates whether the webhook is disabled. *)
  display_name : string prop;
      (** The human-readable name of the webhook, unique within the agent. *)
  enable_spell_correction : bool prop option; [@option]
      (** Indicates if automatic spell correction is enabled in detect intent requests. *)
  enable_stackdriver_logging : bool prop option; [@option]
      (** Determines whether this agent should log conversation queries. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop option; [@option]
      (** The agent to create a webhook for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>. *)
  security_settings : string prop option; [@option]
      (** Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>. *)
  timeout : string prop option; [@option]
      (** Webhook execution timeout. *)
  generic_web_service : generic_web_service list;
  service_directory : service_directory list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_webhook *)

let generic_web_service ?allowed_ca_certs ?request_headers ~uri () :
    generic_web_service =
  { allowed_ca_certs; request_headers; uri }

let service_directory__generic_web_service ?allowed_ca_certs
    ?request_headers ~uri () : service_directory__generic_web_service
    =
  { allowed_ca_certs; request_headers; uri }

let service_directory ~service ~generic_web_service () :
    service_directory =
  { service; generic_web_service }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_cx_webhook ?disabled ?enable_spell_correction
    ?enable_stackdriver_logging ?id ?parent ?security_settings
    ?timeout ?timeouts ~display_name ~generic_web_service
    ~service_directory () : google_dialogflow_cx_webhook =
  {
    disabled;
    display_name;
    enable_spell_correction;
    enable_stackdriver_logging;
    id;
    parent;
    security_settings;
    timeout;
    generic_web_service;
    service_directory;
    timeouts;
  }

type t = {
  disabled : bool prop;
  display_name : string prop;
  enable_spell_correction : bool prop;
  enable_stackdriver_logging : bool prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  security_settings : string prop;
  start_flow : string prop;
  timeout : string prop;
}

let make ?disabled ?enable_spell_correction
    ?enable_stackdriver_logging ?id ?parent ?security_settings
    ?timeout ?timeouts ~display_name ~generic_web_service
    ~service_directory __id =
  let __type = "google_dialogflow_cx_webhook" in
  let __attrs =
    ({
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       enable_spell_correction =
         Prop.computed __type __id "enable_spell_correction";
       enable_stackdriver_logging =
         Prop.computed __type __id "enable_stackdriver_logging";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       security_settings =
         Prop.computed __type __id "security_settings";
       start_flow = Prop.computed __type __id "start_flow";
       timeout = Prop.computed __type __id "timeout";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_cx_webhook
        (google_dialogflow_cx_webhook ?disabled
           ?enable_spell_correction ?enable_stackdriver_logging ?id
           ?parent ?security_settings ?timeout ?timeouts
           ~display_name ~generic_web_service ~service_directory ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?enable_spell_correction
    ?enable_stackdriver_logging ?id ?parent ?security_settings
    ?timeout ?timeouts ~display_name ~generic_web_service
    ~service_directory __id =
  let (r : _ Tf_core.resource) =
    make ?disabled ?enable_spell_correction
      ?enable_stackdriver_logging ?id ?parent ?security_settings
      ?timeout ?timeouts ~display_name ~generic_web_service
      ~service_directory __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
