(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigtable_table_iam_policy = {
  id : string prop option; [@option]  (** id *)
  instance : string prop;  (** instance *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  table : string prop;  (** table *)
}
[@@deriving yojson_of]
(** google_bigtable_table_iam_policy *)

type t = {
  etag : string prop;
  id : string prop;
  instance : string prop;
  policy_data : string prop;
  project : string prop;
  table : string prop;
}

let google_bigtable_table_iam_policy ?id ?project ~instance
    ~policy_data ~table __resource_id =
  let __resource_type = "google_bigtable_table_iam_policy" in
  let __resource =
    ({ id; instance; policy_data; project; table }
      : google_bigtable_table_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigtable_table_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       table = Prop.computed __resource_type __resource_id "table";
     }
      : t)
  in
  __resource_attributes
