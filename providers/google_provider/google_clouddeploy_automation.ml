(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_clouddeploy_automation__rules__advance_rollout_rule = {
  id : string;
      (** Required. ID of the rule. This id must be unique in the 'Automation' resource to which this rule belongs. The format is 'a-z{0,62}'. *)
  source_phases : string list option; [@option]
      (** Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: '^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$'. *)
  wait : string option; [@option]
      (** Optional. How long to wait after a rollout is finished. *)
}
[@@deriving yojson_of]
(** Optional. The 'AdvanceRolloutRule' will automatically advance a successful Rollout. *)

type google_clouddeploy_automation__rules__promote_release_rule = {
  destination_phase : string option; [@option]
      (** Optional. The starting phase of the rollout created by this operation. Default to the first phase. *)
  destination_target_id : string option; [@option]
      (** Optional. The ID of the stage in the pipeline to which this 'Release' is deploying. If unspecified, default it to the next stage in the promotion flow. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine if the target is one of the stages in the promotion sequence defined in the pipeline. * @next, the next target in the promotion sequence. *)
  id : string;
      (** Required. ID of the rule. This id must be unique in the 'Automation' resource to which this rule belongs. The format is 'a-z{0,62}'. *)
  wait : string option; [@option]
      (** Optional. How long the release need to be paused until being promoted to the next target. *)
}
[@@deriving yojson_of]
(** Optional. 'PromoteReleaseRule' will automatically promote a release from the current target to a specified target. *)

type google_clouddeploy_automation__rules = {
  advance_rollout_rule :
    google_clouddeploy_automation__rules__advance_rollout_rule list;
  promote_release_rule :
    google_clouddeploy_automation__rules__promote_release_rule list;
}
[@@deriving yojson_of]
(** Required. List of Automation rules associated with the Automation resource. Must have at least one rule and limited to 250 rules per Delivery Pipeline. Note: the order of the rules here is not the same as the order of execution. *)

type google_clouddeploy_automation__selector__targets = {
  id : string option; [@option]
      (** ID of the 'Target'. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine which target is being referred to * *, all targets in a location. *)
  labels : (string * string) list option; [@option]
      (** Target labels. *)
}
[@@deriving yojson_of]
(** Contains attributes about a target. *)

type google_clouddeploy_automation__selector = {
  targets : google_clouddeploy_automation__selector__targets list;
}
[@@deriving yojson_of]
(** Required. Selected resources to which the automation will be applied. *)

type google_clouddeploy_automation__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_clouddeploy_automation__timeouts *)

type google_clouddeploy_automation = {
  annotations : (string * string) list option; [@option]
      (** Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash ('/'). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ('[a-z0-9A-Z]') with dashes ('-'), underscores ('_'), dots ('.'), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots('.'), not longer than 253 characters in total, followed by a slash ('/'). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  delivery_pipeline : string;
      (** The delivery_pipeline for the resource *)
  description : string option; [@option]
      (** Optional. Description of the 'Automation'. Max length is 255 characters. *)
  labels : (string * string) list option; [@option]
      (** Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The location for the resource *)
  name : string;  (** Name of the 'Automation'. *)
  service_account : string;
      (** Required. Email address of the user-managed IAM service account that creates Cloud Deploy release and rollout resources. *)
  suspended : bool option; [@option]
      (** Optional. When Suspended, automation is deactivated from execution. *)
  rules : google_clouddeploy_automation__rules list;
  selector : google_clouddeploy_automation__selector list;
  timeouts : google_clouddeploy_automation__timeouts option;
}
[@@deriving yojson_of]
(** google_clouddeploy_automation *)

let google_clouddeploy_automation ?annotations ?description ?labels
    ?suspended ?timeouts ~delivery_pipeline ~location ~name
    ~service_account ~rules ~selector __resource_id =
  let __resource_type = "google_clouddeploy_automation" in
  let __resource =
    {
      annotations;
      delivery_pipeline;
      description;
      labels;
      location;
      name;
      service_account;
      suspended;
      rules;
      selector;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_clouddeploy_automation __resource);
  ()