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

type google_compute_instance_iam_binding = {
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  zone : string prop option; [@option]  (** zone *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_compute_instance_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_compute_instance_iam_binding ?id ?project ?zone
    ~instance_name ~members ~role ~condition () :
    google_compute_instance_iam_binding =
  { id; instance_name; members; project; role; zone; condition }

type t = {
  etag : string prop;
  id : string prop;
  instance_name : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  zone : string prop;
}

let register ?tf_module ?id ?project ?zone ~instance_name ~members
    ~role ~condition __resource_id =
  let __resource_type = "google_compute_instance_iam_binding" in
  let __resource =
    google_compute_instance_iam_binding ?id ?project ?zone
      ~instance_name ~members ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       instance_name =
         Prop.computed __resource_type __resource_id "instance_name";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
