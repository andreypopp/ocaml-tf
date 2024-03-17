(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_secure_source_manager_instance_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_secure_source_manager_instance_iam_binding__condition *)

type google_secure_source_manager_instance_iam_binding = {
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition :
    google_secure_source_manager_instance_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_secure_source_manager_instance_iam_binding *)

let google_secure_source_manager_instance_iam_binding ?id ?location
    ?project ~instance_id ~members ~role ~condition __resource_id =
  let __resource_type =
    "google_secure_source_manager_instance_iam_binding"
  in
  let __resource =
    { id; instance_id; location; members; project; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secure_source_manager_instance_iam_binding
       __resource);
  ()
