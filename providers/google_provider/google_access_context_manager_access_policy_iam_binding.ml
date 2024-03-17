(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_access_context_manager_access_policy_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_access_context_manager_access_policy_iam_binding__condition *)

type google_access_context_manager_access_policy_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  name : string prop;  (** name *)
  role : string prop;  (** role *)
  condition :
    google_access_context_manager_access_policy_iam_binding__condition
    list;
}
[@@deriving yojson_of]
(** google_access_context_manager_access_policy_iam_binding *)

let google_access_context_manager_access_policy_iam_binding ?id
    ~members ~name ~role ~condition __resource_id =
  let __resource_type =
    "google_access_context_manager_access_policy_iam_binding"
  in
  let __resource = { id; members; name; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_access_policy_iam_binding
       __resource);
  ()
