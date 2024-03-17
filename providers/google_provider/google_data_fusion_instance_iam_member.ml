(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_fusion_instance_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_data_fusion_instance_iam_member__condition *)

type google_data_fusion_instance_iam_member = {
  id : string option; [@option]  (** id *)
  member : string;  (** member *)
  name : string;  (** name *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]  (** region *)
  role : string;  (** role *)
  condition : google_data_fusion_instance_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_data_fusion_instance_iam_member *)

let google_data_fusion_instance_iam_member ?id ?project ?region
    ~member ~name ~role ~condition __resource_id =
  let __resource_type = "google_data_fusion_instance_iam_member" in
  let __resource =
    { id; member; name; project; region; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_fusion_instance_iam_member __resource);
  ()
