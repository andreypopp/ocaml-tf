(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_healthcare_dicom_store_iam_member = {
  dicom_store_id : string prop;  (** dicom_store_id *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_healthcare_dicom_store_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_healthcare_dicom_store_iam_member ?id ~dicom_store_id
    ~member ~role ~condition () :
    google_healthcare_dicom_store_iam_member =
  { dicom_store_id; id; member; role; condition }

type t = {
  dicom_store_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

let register ?tf_module ?id ~dicom_store_id ~member ~role ~condition
    __resource_id =
  let __resource_type = "google_healthcare_dicom_store_iam_member" in
  let __resource =
    google_healthcare_dicom_store_iam_member ?id ~dicom_store_id
      ~member ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_dicom_store_iam_member __resource);
  let __resource_attributes =
    ({
       dicom_store_id =
         Prop.computed __resource_type __resource_id "dicom_store_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
