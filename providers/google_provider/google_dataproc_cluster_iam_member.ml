(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_cluster_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_dataproc_cluster_iam_member__condition *)

type google_dataproc_cluster_iam_member = {
  cluster : string;  (** cluster *)
  id : string option; [@option]  (** id *)
  member : string;  (** member *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]  (** region *)
  role : string;  (** role *)
  condition : google_dataproc_cluster_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_dataproc_cluster_iam_member *)

let google_dataproc_cluster_iam_member ?id ?project ?region ~cluster
    ~member ~role ~condition __resource_id =
  let __resource_type = "google_dataproc_cluster_iam_member" in
  let __resource =
    { cluster; id; member; project; region; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_cluster_iam_member __resource);
  ()
