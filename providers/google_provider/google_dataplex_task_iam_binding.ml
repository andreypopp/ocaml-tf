(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dataplex_task_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_dataplex_task_iam_binding__condition *)

type google_dataplex_task_iam_binding = {
  lake : string;  (** lake *)
  members : string list;  (** members *)
  role : string;  (** role *)
  task_id : string;  (** task_id *)
  condition : google_dataplex_task_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_dataplex_task_iam_binding *)

let google_dataplex_task_iam_binding ~lake ~members ~role ~task_id
    ~condition __resource_id =
  let __resource_type = "google_dataplex_task_iam_binding" in
  let __resource = { lake; members; role; task_id; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_task_iam_binding __resource);
  ()
