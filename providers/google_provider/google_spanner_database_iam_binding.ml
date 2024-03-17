(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_spanner_database_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_spanner_database_iam_binding__condition *)

type google_spanner_database_iam_binding = {
  database : string prop;  (** database *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;  (** instance *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : google_spanner_database_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_spanner_database_iam_binding *)

let google_spanner_database_iam_binding ?id ?project ~database
    ~instance ~members ~role ~condition __resource_id =
  let __resource_type = "google_spanner_database_iam_binding" in
  let __resource =
    { database; id; instance; members; project; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_spanner_database_iam_binding __resource);
  ()
