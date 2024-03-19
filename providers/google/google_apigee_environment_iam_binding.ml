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

type google_apigee_environment_iam_binding = {
  env_id : string prop;  (** env_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  org_id : string prop;  (** org_id *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_apigee_environment_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_apigee_environment_iam_binding ?id ~env_id ~members
    ~org_id ~role ~condition () :
    google_apigee_environment_iam_binding =
  { env_id; id; members; org_id; role; condition }

type t = {
  env_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  org_id : string prop;
  role : string prop;
}

let register ?tf_module ?id ~env_id ~members ~org_id ~role ~condition
    __resource_id =
  let __resource_type = "google_apigee_environment_iam_binding" in
  let __resource =
    google_apigee_environment_iam_binding ?id ~env_id ~members
      ~org_id ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_environment_iam_binding __resource);
  let __resource_attributes =
    ({
       env_id = Prop.computed __resource_type __resource_id "env_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
