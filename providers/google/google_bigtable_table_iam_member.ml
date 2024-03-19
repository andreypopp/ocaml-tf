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

type google_bigtable_table_iam_member = {
  id : string prop option; [@option]  (** id *)
  instance : string prop;  (** instance *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  table : string prop;  (** table *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_bigtable_table_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_bigtable_table_iam_member ?id ?project ~instance ~member
    ~role ~table ~condition () : google_bigtable_table_iam_member =
  { id; instance; member; project; role; table; condition }

type t = {
  etag : string prop;
  id : string prop;
  instance : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  table : string prop;
}

let register ?tf_module ?id ?project ~instance ~member ~role ~table
    ~condition __resource_id =
  let __resource_type = "google_bigtable_table_iam_member" in
  let __resource =
    google_bigtable_table_iam_member ?id ?project ~instance ~member
      ~role ~table ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigtable_table_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       table = Prop.computed __resource_type __resource_id "table";
     }
      : t)
  in
  __resource_attributes
