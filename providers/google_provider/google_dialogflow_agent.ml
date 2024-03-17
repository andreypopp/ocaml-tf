(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dialogflow_agent__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_agent__timeouts *)

type google_dialogflow_agent = {
  api_version : string prop option; [@option]
      (** API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query
different service endpoints for different API versions. However, bots connectors and webhook calls will follow
the specified API version.
* API_VERSION_V1: Legacy V1 API.
* API_VERSION_V2: V2 API.
* API_VERSION_V2_BETA_1: V2beta1 API. Possible values: [API_VERSION_V1, API_VERSION_V2, API_VERSION_V2_BETA_1] *)
  avatar_uri : string prop option; [@option]
      (** The URI of the agent's avatar, which are used throughout the Dialogflow console. When an image URL is entered
into this field, the Dialogflow will save the image in the backend. The address of the backend image returned
from the API will be shown in the [avatarUriBackend] field. *)
  classification_threshold : float prop option; [@option]
      (** To filter out false positive results and still get variety in matched natural language inputs for your agent,
you can tune the machine learning classification threshold. If the returned score value is less than the threshold
value, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be
triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the
default of 0.3 is used. *)
  default_language_code : string prop;
      (** The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
for a list of the currently supported language codes. This field cannot be updated after creation. *)
  description : string prop option; [@option]
      (** The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected. *)
  display_name : string prop;  (** The name of this agent. *)
  enable_logging : bool prop option; [@option]
      (** Determines whether this agent should log conversation queries. *)
  id : string prop option; [@option]  (** id *)
  match_mode : string prop option; [@option]
      (** Determines how intents are detected from user queries.
* MATCH_MODE_HYBRID: Best for agents with a small number of examples in intents and/or wide use of templates
syntax and composite entities.
* MATCH_MODE_ML_ONLY: Can be used for agents with a large number of examples in intents, especially the ones
using @sys.any or very large developer entities. Possible values: [MATCH_MODE_HYBRID, MATCH_MODE_ML_ONLY] *)
  project : string prop option; [@option]  (** project *)
  supported_language_codes : string prop list option; [@option]
      (** The list of all languages supported by this agent (except for the defaultLanguageCode). *)
  tier : string prop option; [@option]
      (** The agent tier. If not specified, TIER_STANDARD is assumed.
* TIER_STANDARD: Standard tier.
* TIER_ENTERPRISE: Enterprise tier (Essentials).
* TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).
NOTE: Due to consistency issues, the provider will not read this field from the API. Drift is possible between
the Terraform state and Dialogflow if the agent tier is changed outside of Terraform. Possible values: [TIER_STANDARD, TIER_ENTERPRISE, TIER_ENTERPRISE_PLUS] *)
  time_zone : string prop;
      (** The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
Europe/Paris. *)
  timeouts : google_dialogflow_agent__timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_agent *)

let google_dialogflow_agent ?api_version ?avatar_uri
    ?classification_threshold ?description ?enable_logging ?id
    ?match_mode ?project ?supported_language_codes ?tier ?timeouts
    ~default_language_code ~display_name ~time_zone __resource_id =
  let __resource_type = "google_dialogflow_agent" in
  let __resource =
    {
      api_version;
      avatar_uri;
      classification_threshold;
      default_language_code;
      description;
      display_name;
      enable_logging;
      id;
      match_mode;
      project;
      supported_language_codes;
      tier;
      time_zone;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_agent __resource);
  ()
