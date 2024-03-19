(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_access_context_manager_access_policy_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  name : string prop;  (** name *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_access_context_manager_access_policy_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_access_context_manager_access_policy_iam_member ?id
    ~member ~name ~role ~condition () :
    google_access_context_manager_access_policy_iam_member =
  { id; member; name; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  role : string prop;
}

let register ?tf_module ?id ~member ~name ~role ~condition
    __resource_id =
  let __resource_type =
    "google_access_context_manager_access_policy_iam_member"
  in
  let __resource =
    google_access_context_manager_access_policy_iam_member ?id
      ~member ~name ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_access_context_manager_access_policy_iam_member
       __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       name = Prop.computed __resource_type __resource_id "name";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
