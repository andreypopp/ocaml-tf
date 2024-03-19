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

type google_iap_web_backend_service_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  web_backend_service : string prop;  (** web_backend_service *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_iap_web_backend_service_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_iap_web_backend_service_iam_binding ?id ?project ~members
    ~role ~web_backend_service ~condition () :
    google_iap_web_backend_service_iam_binding =
  { id; members; project; role; web_backend_service; condition }

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  web_backend_service : string prop;
}

let register ?tf_module ?id ?project ~members ~role
    ~web_backend_service ~condition __resource_id =
  let __resource_type =
    "google_iap_web_backend_service_iam_binding"
  in
  let __resource =
    google_iap_web_backend_service_iam_binding ?id ?project ~members
      ~role ~web_backend_service ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_web_backend_service_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       web_backend_service =
         Prop.computed __resource_type __resource_id
           "web_backend_service";
     }
      : t)
  in
  __resource_attributes
