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

type google_data_catalog_taxonomy_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  role : string prop;  (** role *)
  taxonomy : string prop;  (** taxonomy *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_data_catalog_taxonomy_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_data_catalog_taxonomy_iam_binding ?id ?project ?region
    ~members ~role ~taxonomy ~condition () :
    google_data_catalog_taxonomy_iam_binding =
  { id; members; project; region; role; taxonomy; condition }

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  region : string prop;
  role : string prop;
  taxonomy : string prop;
}

let register ?tf_module ?id ?project ?region ~members ~role ~taxonomy
    ~condition __resource_id =
  let __resource_type = "google_data_catalog_taxonomy_iam_binding" in
  let __resource =
    google_data_catalog_taxonomy_iam_binding ?id ?project ?region
      ~members ~role ~taxonomy ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_taxonomy_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       role = Prop.computed __resource_type __resource_id "role";
       taxonomy =
         Prop.computed __resource_type __resource_id "taxonomy";
     }
      : t)
  in
  __resource_attributes
