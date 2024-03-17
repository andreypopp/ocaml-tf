(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_organization_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_organization_iam_member__condition *)

type google_organization_iam_member = {
  id : string option; [@option]  (** id *)
  member : string;  (** member *)
  org_id : string;
      (** The numeric ID of the organization in which you want to manage the audit logging config. *)
  role : string;  (** role *)
  condition : google_organization_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_organization_iam_member *)

let google_organization_iam_member ?id ~member ~org_id ~role
    ~condition __resource_id =
  let __resource_type = "google_organization_iam_member" in
  let __resource = { id; member; org_id; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_organization_iam_member __resource);
  ()
