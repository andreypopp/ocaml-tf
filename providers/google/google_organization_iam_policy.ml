(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_organization_iam_policy = {
  id : string prop option; [@option]  (** id *)
  org_id : string prop;
      (** The numeric ID of the organization in which you want to manage the audit logging config. *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_organization_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  org_id : string prop;
  policy_data : string prop;
}

let google_organization_iam_policy ?id ~org_id ~policy_data
    __resource_id =
  let __resource_type = "google_organization_iam_policy" in
  let __resource =
    ({ id; org_id; policy_data } : google_organization_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_organization_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
     }
      : t)
  in
  __resource_attributes
