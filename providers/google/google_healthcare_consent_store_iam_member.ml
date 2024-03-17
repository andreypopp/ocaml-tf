(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_consent_store_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_healthcare_consent_store_iam_member__condition *)

type google_healthcare_consent_store_iam_member = {
  consent_store_id : string prop;  (** consent_store_id *)
  dataset : string prop;  (** dataset *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  condition :
    google_healthcare_consent_store_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_healthcare_consent_store_iam_member *)

type t = {
  consent_store_id : string prop;
  dataset : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

let google_healthcare_consent_store_iam_member ?id ~consent_store_id
    ~dataset ~member ~role ~condition __resource_id =
  let __resource_type =
    "google_healthcare_consent_store_iam_member"
  in
  let __resource =
    ({ consent_store_id; dataset; id; member; role; condition }
      : google_healthcare_consent_store_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_consent_store_iam_member __resource);
  let __resource_attributes =
    ({
       consent_store_id =
         Prop.computed __resource_type __resource_id
           "consent_store_id";
       dataset =
         Prop.computed __resource_type __resource_id "dataset";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
