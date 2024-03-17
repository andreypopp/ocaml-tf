(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_securityposture_posture__policy_sets__policies__compliance_standards = {
  control : string prop option; [@option]
      (** Mapping of security controls for the policy. *)
  standard : string prop option; [@option]
      (** Mapping of compliance standards for the policy. *)
}
[@@deriving yojson_of]
(** Mapping for policy to security standards and controls. *)

type google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition = {
  description : string prop option; [@option]
      (** Description of the expression *)
  expression : string prop;
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string prop option; [@option]
      (** String indicating the location of the expression for error reporting, e.g. a file name and a position in the file *)
  title : string prop option; [@option]
      (** Title for the expression, i.e. a short string describing its purpose. *)
}
[@@deriving yojson_of]
(** Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
This page details the objects and attributes that are used to the build the CEL expressions for
custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec. *)

type google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint__policy_rules__values = {
  allowed_values : string prop list option; [@option]
      (** List of values allowed at this resource. *)
  denied_values : string prop list option; [@option]
      (** List of values denied at this resource. *)
}
[@@deriving yojson_of]
(** List of values to be used for this policy rule. This field can be set only in policies for list constraints. *)

type google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint__policy_rules = {
  allow_all : bool prop option; [@option]
      (** Setting this to true means that all values are allowed. This field can be set only in policies for list constraints. *)
  deny_all : bool prop option; [@option]
      (** Setting this to true means that all values are denied. This field can be set only in policies for list constraints. *)
  enforce : bool prop option; [@option]
      (** If 'true', then the policy is enforced. If 'false', then any configuration is acceptable.
This field can be set only in policies for boolean constraints. *)
  condition :
    google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint__policy_rules__condition
    list;
  values :
    google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint__policy_rules__values
    list;
}
[@@deriving yojson_of]
(** Definition of policy rules *)

type google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint = {
  canned_constraint_id : string prop;
      (** Organization policy canned constraint Id *)
  policy_rules :
    google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint__policy_rules
    list;
}
[@@deriving yojson_of]
(** Organization policy canned constraint definition. *)

type google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint = {
  action_type : string prop;
      (** The action to take if the condition is met. Possible values: [ALLOW, DENY] *)
  condition : string prop;
      (** A CEL condition that refers to a supported service resource, for example 'resource.management.autoUpgrade == false'. For details about CEL usage, see [Common Expression Language](https://cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language). *)
  description : string prop option; [@option]
      (** A human-friendly description of the constraint to display as an error message when the policy is violated. *)
  display_name : string prop option; [@option]
      (** A human-friendly name for the constraint. *)
  method_types : string prop list;
      (** A list of RESTful methods for which to enforce the constraint. Can be 'CREATE', 'UPDATE', or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services). *)
  name : string prop;
      (** Immutable. The name of the custom constraint. This is unique within the organization. *)
  resource_types : string prop list;
      (** Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, 'container.googleapis.com/NodePool'. *)
}
[@@deriving yojson_of]
(** Organization policy custom constraint definition. *)

type google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition = {
  description : string prop option; [@option]
      (** Description of the expression *)
  expression : string prop;
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string prop option; [@option]
      (** String indicating the location of the expression for error reporting, e.g. a file name and a position in the file *)
  title : string prop option; [@option]
      (** Title for the expression, i.e. a short string describing its purpose. *)
}
[@@deriving yojson_of]
(** Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
This page details the objects and attributes that are used to the build the CEL expressions for
custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec. *)

type google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values = {
  allowed_values : string prop list option; [@option]
      (** List of values allowed at this resource. *)
  denied_values : string prop list option; [@option]
      (** List of values denied at this resource. *)
}
[@@deriving yojson_of]
(** List of values to be used for this policy rule. This field can be set only in policies for list constraints. *)

type google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules = {
  allow_all : bool prop option; [@option]
      (** Setting this to true means that all values are allowed. This field can be set only in policies for list constraints. *)
  deny_all : bool prop option; [@option]
      (** Setting this to true means that all values are denied. This field can be set only in policies for list constraints. *)
  enforce : bool prop option; [@option]
      (** If 'true', then the policy is enforced. If 'false', then any configuration is acceptable.
This field can be set only in policies for boolean constraints. *)
  condition :
    google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__condition
    list;
  values :
    google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules__values
    list;
}
[@@deriving yojson_of]
(** Definition of policy rules *)

type google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint_custom = {
  custom_constraint :
    google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint_custom__custom_constraint
    list;
  policy_rules :
    google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint_custom__policy_rules
    list;
}
[@@deriving yojson_of]
(** Organization policy custom constraint policy definition. *)

type google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression = {
  description : string prop option; [@option]
      (** Description of the expression *)
  expression : string prop;
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string prop option; [@option]
      (** String indicating the location of the expression for error reporting, e.g. a file name and a position in the file *)
  title : string prop option; [@option]
      (** Title for the expression, i.e. a short string describing its purpose. *)
}
[@@deriving yojson_of]
(** The CEL expression for the custom output. A resource property can be
specified to return the value of the property or a text string enclosed
in quotation marks. *)

type google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties = {
  name : string prop;
      (** Name of the property for the custom output. *)
  value_expression :
    google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties__value_expression
    list;
}
[@@deriving yojson_of]
(** A list of custom output properties to add to the finding. *)

type google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output = {
  properties :
    google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output__properties
    list;
}
[@@deriving yojson_of]
(** Custom output properties. A set of optional name-value pairs that define custom source properties to
return with each finding that is generated by the custom module. The custom
source properties that are defined here are included in the finding JSON
under 'sourceProperties'. *)

type google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate = {
  description : string prop option; [@option]
      (** Description of the expression *)
  expression : string prop;
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string prop option; [@option]
      (** String indicating the location of the expression for error reporting, e.g. a file name and a position in the file *)
  title : string prop option; [@option]
      (** Title for the expression, i.e. a short string describing its purpose. *)
}
[@@deriving yojson_of]
(** The CEL expression to evaluate to produce findings.When the expression
evaluates to true against a resource, a finding is generated. *)

type google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector = {
  resource_types : string prop list;
      (** The resource types to run the detector on. *)
}
[@@deriving yojson_of]
(** The resource types that the custom module operates on. Each custom module
can specify up to 5 resource types. *)

type google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config = {
  description : string prop option; [@option]
      (** Text that describes the vulnerability or misconfiguration that the custom
module detects. *)
  recommendation : string prop option; [@option]
      (** An explanation of the recommended steps that security teams can take to
resolve the detected issue *)
  severity : string prop;
      (** The severity to assign to findings generated by the module. Possible values: [SEVERITY_UNSPECIFIED, CRITICAL, HIGH, MEDIUM, LOW] *)
  custom_output :
    google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config__custom_output
    list;
  predicate :
    google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config__predicate
    list;
  resource_selector :
    google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config__resource_selector
    list;
}
[@@deriving yojson_of]
(** Custom module details. *)

type google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module = {
  display_name : string prop option; [@option]
      (** The display name of the Security Health Analytics custom module. This
display name becomes the finding category for all findings that are
returned by this custom module. *)
  id : string prop;  (** A server generated id of custom module. *)
  module_enablement_state : string prop option; [@option]
      (** The state of enablement for the module at its level of the resource hierarchy. Possible values: [ENABLEMENT_STATE_UNSPECIFIED, ENABLED, DISABLED] *)
  config :
    google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module__config
    list;
}
[@@deriving yojson_of]
(** Definition of Security Health Analytics Custom Module. *)

type google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_module = {
  module_enablement_state : string prop option; [@option]
      (** The state of enablement for the module at its level of the resource hierarchy. Possible values: [ENABLEMENT_STATE_UNSPECIFIED, ENABLED, DISABLED] *)
  module_name : string prop;
      (** The name of the module eg: BIGQUERY_TABLE_CMEK_DISABLED. *)
}
[@@deriving yojson_of]
(** Security Health Analytics built-in detector definition. *)

type google_securityposture_posture__policy_sets__policies__constraint = {
  org_policy_constraint :
    google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint
    list;
  org_policy_constraint_custom :
    google_securityposture_posture__policy_sets__policies__constraint__org_policy_constraint_custom
    list;
  security_health_analytics_custom_module :
    google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_custom_module
    list;
  security_health_analytics_module :
    google_securityposture_posture__policy_sets__policies__constraint__security_health_analytics_module
    list;
}
[@@deriving yojson_of]
(** Policy constraint definition.It can have the definition of one of following constraints: orgPolicyConstraint orgPolicyConstraintCustom securityHealthAnalyticsModule securityHealthAnalyticsCustomModule *)

type google_securityposture_posture__policy_sets__policies = {
  description : string prop option; [@option]
      (** Description of the policy. *)
  policy_id : string prop;  (** ID of the policy. *)
  compliance_standards :
    google_securityposture_posture__policy_sets__policies__compliance_standards
    list;
  constraint_ :
    google_securityposture_posture__policy_sets__policies__constraint
    list;
}
[@@deriving yojson_of]
(** List of security policy *)

type google_securityposture_posture__policy_sets = {
  description : string prop option; [@option]
      (** Description of the policy set. *)
  policy_set_id : string prop;  (** ID of the policy set. *)
  policies :
    google_securityposture_posture__policy_sets__policies list;
}
[@@deriving yojson_of]
(** List of policy sets for the posture. *)

type google_securityposture_posture__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_securityposture_posture__timeouts *)

type google_securityposture_posture = {
  description : string prop option; [@option]
      (** Description of the posture. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** Location of the resource, eg: global. *)
  parent : string prop;
      (** The parent of the resource, an organization. Format should be 'organizations/{organization_id}'. *)
  posture_id : string prop;
      (** Id of the posture. It is an immutable field. *)
  state : string prop;
      (** State of the posture. Update to state field should not be triggered along with
with other field updates. Possible values: [DEPRECATED, DRAFT, ACTIVE] *)
  policy_sets : google_securityposture_posture__policy_sets list;
  timeouts : google_securityposture_posture__timeouts option;
}
[@@deriving yojson_of]
(** google_securityposture_posture *)

let google_securityposture_posture ?description ?id ?timeouts
    ~location ~parent ~posture_id ~state ~policy_sets __resource_id =
  let __resource_type = "google_securityposture_posture" in
  let __resource =
    {
      description;
      id;
      location;
      parent;
      posture_id;
      state;
      policy_sets;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_securityposture_posture __resource);
  ()
