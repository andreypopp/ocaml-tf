(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dataplex_task_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_dataplex_task_iam_member__condition *)

type google_dataplex_task_iam_member = {
  lake : string;  (** lake *)
  member : string;  (** member *)
  role : string;  (** role *)
  task_id : string;  (** task_id *)
  condition : google_dataplex_task_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_dataplex_task_iam_member *)

let google_dataplex_task_iam_member ~lake ~member ~role ~task_id
    ~condition __resource_id =
  let __resource_type = "google_dataplex_task_iam_member" in
  let __resource = { lake; member; role; task_id; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_task_iam_member __resource);
  ()