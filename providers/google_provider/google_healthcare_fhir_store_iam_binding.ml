(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_fhir_store_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_healthcare_fhir_store_iam_binding__condition *)

type google_healthcare_fhir_store_iam_binding = {
  fhir_store_id : string prop;  (** fhir_store_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  condition :
    google_healthcare_fhir_store_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_healthcare_fhir_store_iam_binding *)

type t = {
  etag : string prop;
  fhir_store_id : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

let google_healthcare_fhir_store_iam_binding ?id ~fhir_store_id
    ~members ~role ~condition __resource_id =
  let __resource_type = "google_healthcare_fhir_store_iam_binding" in
  let __resource =
    ({ fhir_store_id; id; members; role; condition }
      : google_healthcare_fhir_store_iam_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_fhir_store_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       fhir_store_id =
         Prop.computed __resource_type __resource_id "fhir_store_id";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
