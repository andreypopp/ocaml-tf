(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_cluster_iam_policy = {
  cluster : string prop;  (** cluster *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** google_dataproc_cluster_iam_policy *)

let google_dataproc_cluster_iam_policy ?id ?project ?region ~cluster
    ~policy_data () : google_dataproc_cluster_iam_policy =
  { cluster; id; policy_data; project; region }

type t = {
  cluster : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
}

let register ?tf_module ?id ?project ?region ~cluster ~policy_data
    __resource_id =
  let __resource_type = "google_dataproc_cluster_iam_policy" in
  let __resource =
    google_dataproc_cluster_iam_policy ?id ?project ?region ~cluster
      ~policy_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_cluster_iam_policy __resource);
  let __resource_attributes =
    ({
       cluster =
         Prop.computed __resource_type __resource_id "cluster";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
     }
      : t)
  in
  __resource_attributes
