(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_dicom_store_iam_policy = {
  dicom_store_id : string prop;  (** dicom_store_id *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_healthcare_dicom_store_iam_policy *)

type t = {
  dicom_store_id : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

let google_healthcare_dicom_store_iam_policy ?id ~dicom_store_id
    ~policy_data __resource_id =
  let __resource_type = "google_healthcare_dicom_store_iam_policy" in
  let __resource =
    ({ dicom_store_id; id; policy_data }
      : google_healthcare_dicom_store_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_dicom_store_iam_policy __resource);
  let __resource_attributes =
    ({
       dicom_store_id =
         Prop.computed __resource_type __resource_id "dicom_store_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
     }
      : t)
  in
  __resource_attributes
