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

type google_gke_backup_backup_plan_iam_binding = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  name : string prop;  (** name *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_gke_backup_backup_plan_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_gke_backup_backup_plan_iam_binding ?id ?location ?project
    ~members ~name ~role ~condition () :
    google_gke_backup_backup_plan_iam_binding =
  { id; location; members; name; project; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  members : string list prop;
  name : string prop;
  project : string prop;
  role : string prop;
}

let register ?tf_module ?id ?location ?project ~members ~name ~role
    ~condition __resource_id =
  let __resource_type =
    "google_gke_backup_backup_plan_iam_binding"
  in
  let __resource =
    google_gke_backup_backup_plan_iam_binding ?id ?location ?project
      ~members ~name ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_backup_backup_plan_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       members =
         Prop.computed __resource_type __resource_id "members";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
