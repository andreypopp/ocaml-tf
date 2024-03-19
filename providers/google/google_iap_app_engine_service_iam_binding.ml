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

type google_iap_app_engine_service_iam_binding = {
  app_id : string prop;  (** app_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  service : string prop;  (** service *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_iap_app_engine_service_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_iap_app_engine_service_iam_binding ?id ?project ~app_id
    ~members ~role ~service ~condition () :
    google_iap_app_engine_service_iam_binding =
  { app_id; id; members; project; role; service; condition }

type t = {
  app_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  service : string prop;
}

let register ?tf_module ?id ?project ~app_id ~members ~role ~service
    ~condition __resource_id =
  let __resource_type =
    "google_iap_app_engine_service_iam_binding"
  in
  let __resource =
    google_iap_app_engine_service_iam_binding ?id ?project ~app_id
      ~members ~role ~service ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_app_engine_service_iam_binding __resource);
  let __resource_attributes =
    ({
       app_id = Prop.computed __resource_type __resource_id "app_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       service =
         Prop.computed __resource_type __resource_id "service";
     }
      : t)
  in
  __resource_attributes
