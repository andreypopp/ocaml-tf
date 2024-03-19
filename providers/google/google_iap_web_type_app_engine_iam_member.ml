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

type google_iap_web_type_app_engine_iam_member = {
  app_id : string prop;  (** app_id *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_iap_web_type_app_engine_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_iap_web_type_app_engine_iam_member ?id ?project ~app_id
    ~member ~role ~condition () :
    google_iap_web_type_app_engine_iam_member =
  { app_id; id; member; project; role; condition }

type t = {
  app_id : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

let register ?tf_module ?id ?project ~app_id ~member ~role ~condition
    __resource_id =
  let __resource_type =
    "google_iap_web_type_app_engine_iam_member"
  in
  let __resource =
    google_iap_web_type_app_engine_iam_member ?id ?project ~app_id
      ~member ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_web_type_app_engine_iam_member __resource);
  let __resource_attributes =
    ({
       app_id = Prop.computed __resource_type __resource_id "app_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
