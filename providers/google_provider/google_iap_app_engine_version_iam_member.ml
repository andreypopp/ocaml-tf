(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iap_app_engine_version_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_iap_app_engine_version_iam_member__condition *)

type google_iap_app_engine_version_iam_member = {
  app_id : string;  (** app_id *)
  member : string;  (** member *)
  role : string;  (** role *)
  service : string;  (** service *)
  version_id : string;  (** version_id *)
  condition :
    google_iap_app_engine_version_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_iap_app_engine_version_iam_member *)

let google_iap_app_engine_version_iam_member ~app_id ~member ~role
    ~service ~version_id ~condition __resource_id =
  let __resource_type = "google_iap_app_engine_version_iam_member" in
  let __resource =
    { app_id; member; role; service; version_id; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_app_engine_version_iam_member __resource);
  ()
