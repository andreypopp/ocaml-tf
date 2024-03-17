(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_workflows_workflow__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_workflows_workflow__timeouts *)

type google_workflows_workflow = {
  call_log_level : string option; [@option]
      (** Describes the level of platform logging to apply to calls and call responses during
executions of this workflow. If both the workflow and the execution specify a logging level,
the execution level takes precedence. Possible values: [CALL_LOG_LEVEL_UNSPECIFIED, LOG_ALL_CALLS, LOG_ERRORS_ONLY, LOG_NONE] *)
  crypto_key_name : string option; [@option]
      (** The KMS key used to encrypt workflow and execution data.

Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to this Workflow.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  region : string option; [@option]
      (** The region of the workflow. *)
  source_contents : string option; [@option]
      (** Workflow code to be executed. The size limit is 128KB. *)
  user_env_vars : (string * string) list option; [@option]
      (** User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 4KiB. Keys cannot be empty strings and cannot start with “GOOGLE” or “WORKFLOWS. *)
  timeouts : google_workflows_workflow__timeouts option;
}
[@@deriving yojson_of]
(** google_workflows_workflow *)

let google_workflows_workflow ?call_log_level ?crypto_key_name
    ?labels ?region ?source_contents ?user_env_vars ?timeouts
    __resource_id =
  let __resource_type = "google_workflows_workflow" in
  let __resource =
    {
      call_log_level;
      crypto_key_name;
      labels;
      region;
      source_contents;
      user_env_vars;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_workflows_workflow __resource);
  ()
