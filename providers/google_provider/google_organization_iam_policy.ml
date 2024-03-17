(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_organization_iam_policy = {
  org_id : string;
      (** The numeric ID of the organization in which you want to manage the audit logging config. *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_organization_iam_policy *)

let google_organization_iam_policy ~org_id ~policy_data __resource_id
    =
  let __resource_type = "google_organization_iam_policy" in
  let __resource = { org_id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_organization_iam_policy __resource);
  ()
