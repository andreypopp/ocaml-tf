(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type admission_whitelist_patterns = {
  name_pattern : string prop;
      (** An image name pattern to whitelist, in the form
'registry/path/to/image'. This supports a trailing * as a
wildcard, but this is allowed only in text after the registry/
part. *)
}
[@@deriving yojson_of]
(** A whitelist of image patterns to exclude from admission rules. If an
image's name matches a whitelist pattern, the image's admission
requests will always be permitted regardless of your admission rules. *)

type cluster_admission_rules = {
  cluster : string prop;  (** cluster *)
  enforcement_mode : string prop;
      (** The action when a pod creation is denied by the admission rule. Possible values: [ENFORCED_BLOCK_AND_AUDIT_LOG, DRYRUN_AUDIT_LOG_ONLY] *)
  evaluation_mode : string prop;
      (** How this admission rule will be evaluated. Possible values: [ALWAYS_ALLOW, REQUIRE_ATTESTATION, ALWAYS_DENY] *)
  require_attestations_by : string prop list option; [@option]
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

type default_admission_rule = {
  enforcement_mode : string prop;
      (** The action when a pod creation is denied by the admission rule. Possible values: [ENFORCED_BLOCK_AND_AUDIT_LOG, DRYRUN_AUDIT_LOG_ONLY] *)
  evaluation_mode : string prop;
      (** How this admission rule will be evaluated. Possible values: [ALWAYS_ALLOW, REQUIRE_ATTESTATION, ALWAYS_DENY] *)
  require_attestations_by : string prop list option; [@option]
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

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_binary_authorization_policy = {
  description : string prop option; [@option]
      (** A descriptive comment. *)
  global_policy_evaluation_mode : string prop option; [@option]
      (** Controls the evaluation of a Google-maintained global admission policy
for common system-level images. Images not covered by the global
policy will be subject to the project admission policy. Possible values: [ENABLE, DISABLE] *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  admission_whitelist_patterns : admission_whitelist_patterns list;
  cluster_admission_rules : cluster_admission_rules list;
  default_admission_rule : default_admission_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_binary_authorization_policy *)

let admission_whitelist_patterns ~name_pattern () :
    admission_whitelist_patterns =
  { name_pattern }

let cluster_admission_rules ?require_attestations_by ~cluster
    ~enforcement_mode ~evaluation_mode () : cluster_admission_rules =
  {
    cluster;
    enforcement_mode;
    evaluation_mode;
    require_attestations_by;
  }

let default_admission_rule ?require_attestations_by ~enforcement_mode
    ~evaluation_mode () : default_admission_rule =
  { enforcement_mode; evaluation_mode; require_attestations_by }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_binary_authorization_policy ?description
    ?global_policy_evaluation_mode ?id ?project ?timeouts
    ~admission_whitelist_patterns ~cluster_admission_rules
    ~default_admission_rule () : google_binary_authorization_policy =
  {
    description;
    global_policy_evaluation_mode;
    id;
    project;
    admission_whitelist_patterns;
    cluster_admission_rules;
    default_admission_rule;
    timeouts;
  }

type t = {
  description : string prop;
  global_policy_evaluation_mode : string prop;
  id : string prop;
  project : string prop;
}

let make ?description ?global_policy_evaluation_mode ?id ?project
    ?timeouts ~admission_whitelist_patterns ~cluster_admission_rules
    ~default_admission_rule __id =
  let __type = "google_binary_authorization_policy" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       global_policy_evaluation_mode =
         Prop.computed __type __id "global_policy_evaluation_mode";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_binary_authorization_policy
        (google_binary_authorization_policy ?description
           ?global_policy_evaluation_mode ?id ?project ?timeouts
           ~admission_whitelist_patterns ~cluster_admission_rules
           ~default_admission_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?global_policy_evaluation_mode
    ?id ?project ?timeouts ~admission_whitelist_patterns
    ~cluster_admission_rules ~default_admission_rule __id =
  let (r : _ Tf_core.resource) =
    make ?description ?global_policy_evaluation_mode ?id ?project
      ?timeouts ~admission_whitelist_patterns
      ~cluster_admission_rules ~default_admission_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
