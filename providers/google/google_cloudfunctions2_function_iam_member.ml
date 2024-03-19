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

type google_cloudfunctions2_function_iam_member = {
  cloud_function : string prop;  (** cloud_function *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_cloudfunctions2_function_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_cloudfunctions2_function_iam_member ?id ?location ?project
    ~cloud_function ~member ~role ~condition () :
    google_cloudfunctions2_function_iam_member =
  { cloud_function; id; location; member; project; role; condition }

type t = {
  cloud_function : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

let register ?tf_module ?id ?location ?project ~cloud_function
    ~member ~role ~condition __resource_id =
  let __resource_type =
    "google_cloudfunctions2_function_iam_member"
  in
  let __resource =
    google_cloudfunctions2_function_iam_member ?id ?location ?project
      ~cloud_function ~member ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudfunctions2_function_iam_member __resource);
  let __resource_attributes =
    ({
       cloud_function =
         Prop.computed __resource_type __resource_id "cloud_function";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
