(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_notebooks_runtime_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_notebooks_runtime_iam_binding__condition *)

type google_notebooks_runtime_iam_binding = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  runtime_name : string prop;  (** runtime_name *)
  condition : google_notebooks_runtime_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_notebooks_runtime_iam_binding *)

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  runtime_name : string prop;
}

let google_notebooks_runtime_iam_binding ?id ?location ?project
    ~members ~role ~runtime_name ~condition __resource_id =
  let __resource_type = "google_notebooks_runtime_iam_binding" in
  let __resource =
    ({
       id;
       location;
       members;
       project;
       role;
       runtime_name;
       condition;
     }
      : google_notebooks_runtime_iam_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_runtime_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       runtime_name =
         Prop.computed __resource_type __resource_id "runtime_name";
     }
      : t)
  in
  __resource_attributes
