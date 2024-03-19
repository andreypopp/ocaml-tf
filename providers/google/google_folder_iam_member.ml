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

type google_folder_iam_member = {
  folder : string prop;  (** folder *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_folder_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_folder_iam_member ?id ~folder ~member ~role ~condition ()
    : google_folder_iam_member =
  { folder; id; member; role; condition }

type t = {
  etag : string prop;
  folder : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

let register ?tf_module ?id ~folder ~member ~role ~condition
    __resource_id =
  let __resource_type = "google_folder_iam_member" in
  let __resource =
    google_folder_iam_member ?id ~folder ~member ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_folder_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       folder = Prop.computed __resource_type __resource_id "folder";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
