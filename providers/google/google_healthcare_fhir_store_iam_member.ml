(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_fhir_store_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_healthcare_fhir_store_iam_member__condition *)

type google_healthcare_fhir_store_iam_member = {
  fhir_store_id : string prop;  (** fhir_store_id *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  condition : google_healthcare_fhir_store_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_healthcare_fhir_store_iam_member *)

type t = {
  etag : string prop;
  fhir_store_id : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

let google_healthcare_fhir_store_iam_member ?id ~fhir_store_id
    ~member ~role ~condition __resource_id =
  let __resource_type = "google_healthcare_fhir_store_iam_member" in
  let __resource =
    ({ fhir_store_id; id; member; role; condition }
      : google_healthcare_fhir_store_iam_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_fhir_store_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       fhir_store_id =
         Prop.computed __resource_type __resource_id "fhir_store_id";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
