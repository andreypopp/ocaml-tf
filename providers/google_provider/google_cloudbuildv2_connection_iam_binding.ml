(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_cloudbuildv2_connection_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_cloudbuildv2_connection_iam_binding__condition *)

type google_cloudbuildv2_connection_iam_binding = {
  members : string list;  (** members *)
  name : string;  (** name *)
  role : string;  (** role *)
  condition :
    google_cloudbuildv2_connection_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_cloudbuildv2_connection_iam_binding *)

let google_cloudbuildv2_connection_iam_binding ~members ~name ~role
    ~condition __resource_id =
  let __resource_type =
    "google_cloudbuildv2_connection_iam_binding"
  in
  let __resource = { members; name; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudbuildv2_connection_iam_binding __resource);
  ()