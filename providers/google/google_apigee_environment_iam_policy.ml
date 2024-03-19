(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_environment_iam_policy = {
  env_id : string prop;  (** env_id *)
  id : string prop option; [@option]  (** id *)
  org_id : string prop;  (** org_id *)
  policy_data : string prop;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_apigee_environment_iam_policy *)

let google_apigee_environment_iam_policy ?id ~env_id ~org_id
    ~policy_data () : google_apigee_environment_iam_policy =
  { env_id; id; org_id; policy_data }

type t = {
  env_id : string prop;
  etag : string prop;
  id : string prop;
  org_id : string prop;
  policy_data : string prop;
}

let register ?tf_module ?id ~env_id ~org_id ~policy_data
    __resource_id =
  let __resource_type = "google_apigee_environment_iam_policy" in
  let __resource =
    google_apigee_environment_iam_policy ?id ~env_id ~org_id
      ~policy_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_environment_iam_policy __resource);
  let __resource_attributes =
    ({
       env_id = Prop.computed __resource_type __resource_id "env_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
     }
      : t)
  in
  __resource_attributes
