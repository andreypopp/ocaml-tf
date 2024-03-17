(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_bigtable_table_iam_policy = {
  instance : string;  (** instance *)
  policy_data : string;  (** policy_data *)
  table : string;  (** table *)
}
[@@deriving yojson_of]
(** google_bigtable_table_iam_policy *)

let google_bigtable_table_iam_policy ~instance ~policy_data ~table
    __resource_id =
  let __resource_type = "google_bigtable_table_iam_policy" in
  let __resource = { instance; policy_data; table } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigtable_table_iam_policy __resource);
  ()
