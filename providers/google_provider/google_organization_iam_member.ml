(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_organization_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_organization_iam_member__condition *)

type google_organization_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  org_id : string prop;
      (** The numeric ID of the organization in which you want to manage the audit logging config. *)
  role : string prop;  (** role *)
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
