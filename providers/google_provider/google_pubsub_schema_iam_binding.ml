(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_pubsub_schema_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_pubsub_schema_iam_binding__condition *)

type google_pubsub_schema_iam_binding = {
  members : string list;  (** members *)
  role : string;  (** role *)
  schema : string;  (** schema *)
  condition : google_pubsub_schema_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_pubsub_schema_iam_binding *)

let google_pubsub_schema_iam_binding ~members ~role ~schema
    ~condition __resource_id =
  let __resource_type = "google_pubsub_schema_iam_binding" in
  let __resource = { members; role; schema; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_schema_iam_binding __resource);
  ()
