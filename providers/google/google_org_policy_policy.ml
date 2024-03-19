(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type dry_run_spec__rules__condition = {
  description : string prop option; [@option]
      (** Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. *)
  expression : string prop option; [@option]
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string prop option; [@option]
      (** Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. *)
  title : string prop option; [@option]
      (** Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. *)
}
[@@deriving yojson_of]
(** A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the || or && operators. Each subexpression must be of the form resource.matchTag('/tag_key_short_name, 'tag_value_short_name'). or resource.matchTagId('tagKeys/key_id', 'tagValues/value_id'). where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: resource.matchTag('123456789/environment, 'prod'). or resource.matchTagId('tagKeys/123', 'tagValues/456'). *)

type dry_run_spec__rules__values = {
  allowed_values : string prop list option; [@option]
      (** List of values allowed at this resource. *)
  denied_values : string prop list option; [@option]
      (** List of values denied at this resource. *)
}
[@@deriving yojson_of]
(** List of values to be used for this policy rule. This field can be set only in policies for list constraints. *)

type dry_run_spec__rules = {
  allow_all : string prop option; [@option]
      (** Setting this to `TRUE` means that all values are allowed. This field can be set only in policies for list constraints. *)
  deny_all : string prop option; [@option]
      (** Setting this to `TRUE` means that all values are denied. This field can be set only in policies for list constraints. *)
  enforce : string prop option; [@option]
      (** If `TRUE`, then the policy is enforced. If `FALSE`, then any configuration is acceptable. This field can be set only in policies for boolean constraints. *)
  condition : dry_run_spec__rules__condition list;
  values : dry_run_spec__rules__values list;
}
[@@deriving yojson_of]
(** In policies for boolean constraints, the following requirements apply: - There must be one and only one policy rule where condition is unset. - Boolean policy rules with conditions must set `enforced` to the opposite of the policy rule without a condition. - During policy evaluation, policy rules with conditions that are true for a target resource take precedence. *)

type dry_run_spec = {
  inherit_from_parent : bool prop option; [@option]
      (** Determines the inheritance behavior for this policy. If `inherit_from_parent` is true, policy rules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this policy becomes the new root for evaluation. This field can be set only for policies which configure list constraints. *)
  reset : bool prop option; [@option]
      (** Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific constraint at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false. *)
  rules : dry_run_spec__rules list;
}
[@@deriving yojson_of]
(** Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced. *)

type spec__rules__condition = {
  description : string prop option; [@option]
      (** Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI. *)
  expression : string prop option; [@option]
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string prop option; [@option]
      (** Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file. *)
  title : string prop option; [@option]
      (** Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression. *)
}
[@@deriving yojson_of]
(** A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the || or && operators. Each subexpression must be of the form resource.matchTag('/tag_key_short_name, 'tag_value_short_name'). or resource.matchTagId('tagKeys/key_id', 'tagValues/value_id'). where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: resource.matchTag('123456789/environment, 'prod'). or resource.matchTagId('tagKeys/123', 'tagValues/456'). *)

type spec__rules__values = {
  allowed_values : string prop list option; [@option]
      (** List of values allowed at this resource. *)
  denied_values : string prop list option; [@option]
      (** List of values denied at this resource. *)
}
[@@deriving yojson_of]
(** List of values to be used for this PolicyRule. This field can be set only in Policies for list constraints. *)

type spec__rules = {
  allow_all : string prop option; [@option]
      (** Setting this to `TRUE` means that all values are allowed. This field can be set only in Policies for list constraints. *)
  deny_all : string prop option; [@option]
      (** Setting this to `TRUE` means that all values are denied. This field can be set only in Policies for list constraints. *)
  enforce : string prop option; [@option]
      (** If `TRUE`, then the `Policy` is enforced. If `FALSE`, then any configuration is acceptable. This field can be set only in Policies for boolean constraints. *)
  condition : spec__rules__condition list;
  values : spec__rules__values list;
}
[@@deriving yojson_of]
(** Up to 10 PolicyRules are allowed. In Policies for boolean constraints, the following requirements apply: - There must be one and only one PolicyRule where condition is unset. - BooleanPolicyRules with conditions must set `enforced` to the opposite of the PolicyRule without a condition. - During policy evaluation, PolicyRules with conditions that are true for a target resource take precedence. *)

type spec = {
  inherit_from_parent : bool prop option; [@option]
      (** Determines the inheritance behavior for this `Policy`. If `inherit_from_parent` is true, PolicyRules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this Policy becomes the new root for evaluation. This field can be set only for Policies which configure list constraints. *)
  reset : bool prop option; [@option]
      (** Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific `Constraint` at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false. *)
  rules : spec__rules list;
}
[@@deriving yojson_of]
(** Basic information about the Organization Policy. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_org_policy_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, projects/123/policies/compute.disableSerialPortAccess. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number. *)
  parent : string prop;  (** The parent of the resource. *)
  dry_run_spec : dry_run_spec list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_org_policy_policy *)

let dry_run_spec__rules__condition ?description ?expression ?location
    ?title () : dry_run_spec__rules__condition =
  { description; expression; location; title }

let dry_run_spec__rules__values ?allowed_values ?denied_values () :
    dry_run_spec__rules__values =
  { allowed_values; denied_values }

let dry_run_spec__rules ?allow_all ?deny_all ?enforce ~condition
    ~values () : dry_run_spec__rules =
  { allow_all; deny_all; enforce; condition; values }

let dry_run_spec ?inherit_from_parent ?reset ~rules () : dry_run_spec
    =
  { inherit_from_parent; reset; rules }

let spec__rules__condition ?description ?expression ?location ?title
    () : spec__rules__condition =
  { description; expression; location; title }

let spec__rules__values ?allowed_values ?denied_values () :
    spec__rules__values =
  { allowed_values; denied_values }

let spec__rules ?allow_all ?deny_all ?enforce ~condition ~values () :
    spec__rules =
  { allow_all; deny_all; enforce; condition; values }

let spec ?inherit_from_parent ?reset ~rules () : spec =
  { inherit_from_parent; reset; rules }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_org_policy_policy ?id ?timeouts ~name ~parent
    ~dry_run_spec ~spec () : google_org_policy_policy =
  { id; name; parent; dry_run_spec; spec; timeouts }

type t = {
  etag : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~parent ~dry_run_spec
    ~spec __resource_id =
  let __resource_type = "google_org_policy_policy" in
  let __resource =
    google_org_policy_policy ?id ?timeouts ~name ~parent
      ~dry_run_spec ~spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_org_policy_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
     }
      : t)
  in
  __resource_attributes
