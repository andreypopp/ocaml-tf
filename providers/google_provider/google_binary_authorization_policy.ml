(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_binary_authorization_policy__admission_whitelist_patterns = {
  name_pattern : string;
      (** An image name pattern to whitelist, in the form
'registry/path/to/image'. This supports a trailing * as a
wildcard, but this is allowed only in text after the registry/
part. *)
}
[@@deriving yojson_of]
(** A whitelist of image patterns to exclude from admission rules. If an
image's name matches a whitelist pattern, the image's admission
requests will always be permitted regardless of your admission rules. *)

type google_binary_authorization_policy__cluster_admission_rules = {
  cluster : string;  (** cluster *)
  enforcement_mode : string;
      (** The action when a pod creation is denied by the admission rule. Possible values: [ENFORCED_BLOCK_AND_AUDIT_LOG, DRYRUN_AUDIT_LOG_ONLY] *)
  evaluation_mode : string;
      (** How this admission rule will be evaluated. Possible values: [ALWAYS_ALLOW, REQUIRE_ATTESTATION, ALWAYS_DENY] *)
  require_attestations_by : string list option; [@option]
      (** The resource names of the attestors that must attest to a
container image. If the attestor is in a different project from the
policy, it should be specified in the format 'projects/*/attestors/*'.
Each attestor must exist before a policy can reference it. To add an
attestor to a policy the principal issuing the policy change
request must be able to read the attestor resource.

Note: this field must be non-empty when the evaluation_mode field
specifies REQUIRE_ATTESTATION, otherwise it must be empty. *)
}
[@@deriving yojson_of]
(** Per-cluster admission rules. An admission rule specifies either that
all container images used in a pod creation request must be attested
to by one or more attestors, that all pod creations will be allowed,
or that all pod creations will be denied. There can be at most one
admission rule per cluster spec.


Identifier format: '{{location}}.{{clusterId}}'.
A location is either a compute zone (e.g. 'us-central1-a') or a region
(e.g. 'us-central1'). *)

type google_binary_authorization_policy__default_admission_rule = {
  enforcement_mode : string;
      (** The action when a pod creation is denied by the admission rule. Possible values: [ENFORCED_BLOCK_AND_AUDIT_LOG, DRYRUN_AUDIT_LOG_ONLY] *)
  evaluation_mode : string;
      (** How this admission rule will be evaluated. Possible values: [ALWAYS_ALLOW, REQUIRE_ATTESTATION, ALWAYS_DENY] *)
  require_attestations_by : string list option; [@option]
      (** The resource names of the attestors that must attest to a
container image. If the attestor is in a different project from the
policy, it should be specified in the format 'projects/*/attestors/*'.
Each attestor must exist before a policy can reference it. To add an
attestor to a policy the principal issuing the policy change
request must be able to read the attestor resource.

Note: this field must be non-empty when the evaluation_mode field
specifies REQUIRE_ATTESTATION, otherwise it must be empty. *)
}
[@@deriving yojson_of]
(** Default admission rule for a cluster without a per-cluster admission
rule. *)

type google_binary_authorization_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_binary_authorization_policy__timeouts *)

type google_binary_authorization_policy = {
  description : string option; [@option]
      (** A descriptive comment. *)
  admission_whitelist_patterns :
    google_binary_authorization_policy__admission_whitelist_patterns
    list;
  cluster_admission_rules :
    google_binary_authorization_policy__cluster_admission_rules list;
  default_admission_rule :
    google_binary_authorization_policy__default_admission_rule list;
  timeouts : google_binary_authorization_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_binary_authorization_policy *)

let google_binary_authorization_policy ?description ?timeouts
    ~admission_whitelist_patterns ~cluster_admission_rules
    ~default_admission_rule __resource_id =
  let __resource_type = "google_binary_authorization_policy" in
  let __resource =
    {
      description;
      admission_whitelist_patterns;
      cluster_admission_rules;
      default_admission_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_binary_authorization_policy __resource);
  ()
