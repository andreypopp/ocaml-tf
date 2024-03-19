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

type google_dataproc_autoscaling_policy_iam_binding = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  policy_id : string prop;  (** policy_id *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_dataproc_autoscaling_policy_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_dataproc_autoscaling_policy_iam_binding ?id ?location
    ?project ~members ~policy_id ~role ~condition () :
    google_dataproc_autoscaling_policy_iam_binding =
  { id; location; members; policy_id; project; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  location : string prop;
  members : string list prop;
  policy_id : string prop;
  project : string prop;
  role : string prop;
}

let register ?tf_module ?id ?location ?project ~members ~policy_id
    ~role ~condition __resource_id =
  let __resource_type =
    "google_dataproc_autoscaling_policy_iam_binding"
  in
  let __resource =
    google_dataproc_autoscaling_policy_iam_binding ?id ?location
      ?project ~members ~policy_id ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_autoscaling_policy_iam_binding
       __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       members =
         Prop.computed __resource_type __resource_id "members";
       policy_id =
         Prop.computed __resource_type __resource_id "policy_id";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
