(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iap_web_type_app_engine_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_iap_web_type_app_engine_iam_binding__condition *)

type google_iap_web_type_app_engine_iam_binding = {
  app_id : string prop;  (** app_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition :
    google_iap_web_type_app_engine_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_iap_web_type_app_engine_iam_binding *)

let google_iap_web_type_app_engine_iam_binding ?id ?project ~app_id
    ~members ~role ~condition __resource_id =
  let __resource_type =
    "google_iap_web_type_app_engine_iam_binding"
  in
  let __resource =
    { app_id; id; members; project; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_web_type_app_engine_iam_binding __resource);
  ()
