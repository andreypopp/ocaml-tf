(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iap_app_engine_version_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_iap_app_engine_version_iam_member__condition *)

type google_iap_app_engine_version_iam_member = {
  app_id : string prop;  (** app_id *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  service : string prop;  (** service *)
  version_id : string prop;  (** version_id *)
  condition :
    google_iap_app_engine_version_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_iap_app_engine_version_iam_member *)

let google_iap_app_engine_version_iam_member ?id ?project ~app_id
    ~member ~role ~service ~version_id ~condition __resource_id =
  let __resource_type = "google_iap_app_engine_version_iam_member" in
  let __resource =
    {
      app_id;
      id;
      member;
      project;
      role;
      service;
      version_id;
      condition;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_app_engine_version_iam_member __resource);
  ()
