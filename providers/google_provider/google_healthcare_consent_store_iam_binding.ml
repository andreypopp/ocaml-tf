(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_consent_store_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_healthcare_consent_store_iam_binding__condition *)

type google_healthcare_consent_store_iam_binding = {
  consent_store_id : string prop;  (** consent_store_id *)
  dataset : string prop;  (** dataset *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  condition :
    google_healthcare_consent_store_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_healthcare_consent_store_iam_binding *)

let google_healthcare_consent_store_iam_binding ?id ~consent_store_id
    ~dataset ~members ~role ~condition __resource_id =
  let __resource_type =
    "google_healthcare_consent_store_iam_binding"
  in
  let __resource =
    { consent_store_id; dataset; id; members; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_consent_store_iam_binding __resource);
  ()
