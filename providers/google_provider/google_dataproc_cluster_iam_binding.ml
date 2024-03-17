(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_cluster_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_dataproc_cluster_iam_binding__condition *)

type google_dataproc_cluster_iam_binding = {
  cluster : string prop;  (** cluster *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  role : string prop;  (** role *)
  condition : google_dataproc_cluster_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_dataproc_cluster_iam_binding *)

let google_dataproc_cluster_iam_binding ?id ?project ?region ~cluster
    ~members ~role ~condition __resource_id =
  let __resource_type = "google_dataproc_cluster_iam_binding" in
  let __resource =
    { cluster; id; members; project; region; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_cluster_iam_binding __resource);
  ()
