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

type google_bigtable_table_iam_binding = {
  id : string prop option; [@option]  (** id *)
  instance : string prop;  (** instance *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  table : string prop;  (** table *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_bigtable_table_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_bigtable_table_iam_binding ?id ?project ~instance ~members
    ~role ~table ~condition () : google_bigtable_table_iam_binding =
  { id; instance; members; project; role; table; condition }

type t = {
  etag : string prop;
  id : string prop;
  instance : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  table : string prop;
}

let register ?tf_module ?id ?project ~instance ~members ~role ~table
    ~condition __resource_id =
  let __resource_type = "google_bigtable_table_iam_binding" in
  let __resource =
    google_bigtable_table_iam_binding ?id ?project ~instance ~members
      ~role ~table ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigtable_table_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       table = Prop.computed __resource_type __resource_id "table";
     }
      : t)
  in
  __resource_attributes
