(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_snapshot_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_compute_snapshot_iam_member__condition *)

type google_compute_snapshot_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  name : string prop;  (** name *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : google_compute_snapshot_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_compute_snapshot_iam_member *)

let google_compute_snapshot_iam_member ?id ?project ~member ~name
    ~role ~condition __resource_id =
  let __resource_type = "google_compute_snapshot_iam_member" in
  let __resource = { id; member; name; project; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_snapshot_iam_member __resource);
  ()
