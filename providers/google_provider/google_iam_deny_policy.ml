(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iam_deny_policy__rules__deny_rule__denial_condition = {
  description : string option; [@option]
      (** Description of the expression. This is a longer text which describes the expression,
e.g. when hovered over it in a UI. *)
  expression : string;
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string option; [@option]
      (** String indicating the location of the expression for error reporting,
e.g. a file name and a position in the file. *)
  title : string option; [@option]
      (** Title for the expression, i.e. a short string describing its purpose.
This can be used e.g. in UIs which allow to enter the expression. *)
}
[@@deriving yojson_of]
(** User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. *)

type google_iam_deny_policy__rules__deny_rule = {
  denied_permissions : string list option; [@option]
      (** The permissions that are explicitly denied by this rule. Each permission uses the format '{service-fqdn}/{resource}.{verb}',
where '{service-fqdn}' is the fully qualified domain name for the service. For example, 'iam.googleapis.com/roles.list'. *)
  denied_principals : string list option; [@option]
      (** The identities that are prevented from using one or more permissions on Google Cloud resources. *)
  exception_permissions : string list option; [@option]
      (** Specifies the permissions that this rule excludes from the set of denied permissions given by deniedPermissions.
If a permission appears in deniedPermissions and in exceptionPermissions then it will not be denied.
The excluded permissions can be specified using the same syntax as deniedPermissions. *)
  exception_principals : string list option; [@option]
      (** The identities that are excluded from the deny rule, even if they are listed in the deniedPrincipals.
For example, you could add a Google group to the deniedPrincipals, then exclude specific users who belong to that group. *)
  denial_condition :
    google_iam_deny_policy__rules__deny_rule__denial_condition list;
}
[@@deriving yojson_of]
(** A deny rule in an IAM deny policy. *)

type google_iam_deny_policy__rules = {
  description : string option; [@option]
      (** The description of the rule. *)
  deny_rule : google_iam_deny_policy__rules__deny_rule list;
}
[@@deriving yojson_of]
(** Rules to be applied. *)

type google_iam_deny_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_iam_deny_policy__timeouts *)

type google_iam_deny_policy = {
  display_name : string option; [@option]
      (** The display name of the rule. *)
  id : string option; [@option]  (** id *)
  name : string;  (** The name of the policy. *)
  parent : string;
      (** The attachment point is identified by its URL-encoded full resource name. *)
  rules : google_iam_deny_policy__rules list;
  timeouts : google_iam_deny_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_iam_deny_policy *)

let google_iam_deny_policy ?display_name ?id ?timeouts ~name ~parent
    ~rules __resource_id =
  let __resource_type = "google_iam_deny_policy" in
  let __resource =
    { display_name; id; name; parent; rules; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iam_deny_policy __resource);
  ()
