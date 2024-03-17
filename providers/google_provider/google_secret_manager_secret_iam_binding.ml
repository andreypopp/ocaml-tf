(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_secret_manager_secret_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_secret_manager_secret_iam_binding__condition *)

type google_secret_manager_secret_iam_binding = {
  members : string list;  (** members *)
  role : string;  (** role *)
  secret_id : string;  (** secret_id *)
  condition :
    google_secret_manager_secret_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_secret_manager_secret_iam_binding *)

let google_secret_manager_secret_iam_binding ~members ~role
    ~secret_id ~condition __resource_id =
  let __resource_type = "google_secret_manager_secret_iam_binding" in
  let __resource = { members; role; secret_id; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secret_manager_secret_iam_binding __resource);
  ()
