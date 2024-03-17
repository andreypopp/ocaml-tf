(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloudfunctions_function_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_cloudfunctions_function_iam_binding__condition *)

type google_cloudfunctions_function_iam_binding = {
  cloud_function : string;  (** cloud_function *)
  id : string option; [@option]  (** id *)
  members : string list;  (** members *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]  (** region *)
  role : string;  (** role *)
  condition :
    google_cloudfunctions_function_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_cloudfunctions_function_iam_binding *)

let google_cloudfunctions_function_iam_binding ?id ?project ?region
    ~cloud_function ~members ~role ~condition __resource_id =
  let __resource_type =
    "google_cloudfunctions_function_iam_binding"
  in
  let __resource =
    { cloud_function; id; members; project; region; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudfunctions_function_iam_binding __resource);
  ()
