(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_spanner_database_iam_policy = {
  database : string prop;  (** database *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;  (** instance *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_spanner_database_iam_policy *)

let google_spanner_database_iam_policy ?id ?project ~database
    ~instance ~policy_data __resource_id =
  let __resource_type = "google_spanner_database_iam_policy" in
  let __resource =
    { database; id; instance; policy_data; project }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_spanner_database_iam_policy __resource);
  ()
