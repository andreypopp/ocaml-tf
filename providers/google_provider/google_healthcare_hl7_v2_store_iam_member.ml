(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_healthcare_hl7_v2_store_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_healthcare_hl7_v2_store_iam_member__condition *)

type google_healthcare_hl7_v2_store_iam_member = {
  hl7_v2_store_id : string;  (** hl7_v2_store_id *)
  member : string;  (** member *)
  role : string;  (** role *)
  condition :
    google_healthcare_hl7_v2_store_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_healthcare_hl7_v2_store_iam_member *)

let google_healthcare_hl7_v2_store_iam_member ~hl7_v2_store_id
    ~member ~role ~condition __resource_id =
  let __resource_type =
    "google_healthcare_hl7_v2_store_iam_member"
  in
  let __resource = { hl7_v2_store_id; member; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_hl7_v2_store_iam_member __resource);
  ()