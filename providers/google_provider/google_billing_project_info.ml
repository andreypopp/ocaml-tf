(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_billing_project_info__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_billing_project_info__timeouts *)

type google_billing_project_info = {
  billing_account : string;
      (** The ID of the billing account associated with the project, if
any. Set to empty string to disable billing for the project.
For example, '012345-567890-ABCDEF' or ''. *)
  timeouts : google_billing_project_info__timeouts option;
}
[@@deriving yojson_of]
(** google_billing_project_info *)

let google_billing_project_info ?timeouts ~billing_account
    __resource_id =
  let __resource_type = "google_billing_project_info" in
  let __resource = { billing_account; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_billing_project_info __resource);
  ()