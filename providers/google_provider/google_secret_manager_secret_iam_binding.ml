(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_secret_manager_secret_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_secret_manager_secret_iam_binding__condition *)

type google_secret_manager_secret_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  secret_id : string prop;  (** secret_id *)
  condition :
    google_secret_manager_secret_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_secret_manager_secret_iam_binding *)

let google_secret_manager_secret_iam_binding ?id ?project ~members
    ~role ~secret_id ~condition __resource_id =
  let __resource_type = "google_secret_manager_secret_iam_binding" in
  let __resource =
    { id; members; project; role; secret_id; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secret_manager_secret_iam_binding __resource);
  ()
