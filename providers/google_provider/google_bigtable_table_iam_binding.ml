(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_bigtable_table_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_bigtable_table_iam_binding__condition *)

type google_bigtable_table_iam_binding = {
  instance : string;  (** instance *)
  members : string list;  (** members *)
  role : string;  (** role *)
  table : string;  (** table *)
  condition : google_bigtable_table_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_bigtable_table_iam_binding *)

let google_bigtable_table_iam_binding ~instance ~members ~role ~table
    ~condition __resource_id =
  let __resource_type = "google_bigtable_table_iam_binding" in
  let __resource = { instance; members; role; table; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigtable_table_iam_binding __resource);
  ()