(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_autoscaling_policy_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_dataproc_autoscaling_policy_iam_member__condition *)

type google_dataproc_autoscaling_policy_iam_member = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  member : string prop;  (** member *)
  policy_id : string prop;  (** policy_id *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition :
    google_dataproc_autoscaling_policy_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_dataproc_autoscaling_policy_iam_member *)

let google_dataproc_autoscaling_policy_iam_member ?id ?location
    ?project ~member ~policy_id ~role ~condition __resource_id =
  let __resource_type =
    "google_dataproc_autoscaling_policy_iam_member"
  in
  let __resource =
    { id; location; member; policy_id; project; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_autoscaling_policy_iam_member
       __resource);
  ()
