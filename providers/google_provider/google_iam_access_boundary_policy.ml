(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_iam_access_boundary_policy__rules__access_boundary_rule__availability_condition = {
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
(** The availability condition further constrains the access allowed by the access boundary rule. *)

type google_iam_access_boundary_policy__rules__access_boundary_rule = {
  available_permissions : string list option; [@option]
      (** A list of permissions that may be allowed for use on the specified resource. *)
  available_resource : string option; [@option]
      (** The full resource name of a Google Cloud resource entity. *)
  availability_condition :
    google_iam_access_boundary_policy__rules__access_boundary_rule__availability_condition
    list;
}
[@@deriving yojson_of]
(** An access boundary rule in an IAM policy. *)

type google_iam_access_boundary_policy__rules = {
  description : string option; [@option]
      (** The description of the rule. *)
  access_boundary_rule :
    google_iam_access_boundary_policy__rules__access_boundary_rule
    list;
}
[@@deriving yojson_of]
(** Rules to be applied. *)

type google_iam_access_boundary_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_iam_access_boundary_policy__timeouts *)

type google_iam_access_boundary_policy = {
  display_name : string option; [@option]
      (** The display name of the rule. *)
  name : string;  (** The name of the policy. *)
  parent : string;
      (** The attachment point is identified by its URL-encoded full resource name. *)
  rules : google_iam_access_boundary_policy__rules list;
  timeouts : google_iam_access_boundary_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_iam_access_boundary_policy *)

let google_iam_access_boundary_policy ?display_name ?timeouts ~name
    ~parent ~rules __resource_id =
  let __resource_type = "google_iam_access_boundary_policy" in
  let __resource = { display_name; name; parent; rules; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iam_access_boundary_policy __resource);
  ()
