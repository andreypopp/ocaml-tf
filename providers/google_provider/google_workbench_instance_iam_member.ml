(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_workbench_instance_iam_member__condition = {
  description: string option; [@option] (** description *)
  expression: string;  (** expression *)
  title: string;  (** title *)
} [@@deriving yojson_of]
(** google_workbench_instance_iam_member__condition *)

type google_workbench_instance_iam_member = {
  id: string option; [@option] (** id *)
  location: string option; [@option] (** location *)
  member: string;  (** member *)
  name: string;  (** name *)
  project: string option; [@option] (** project *)
  role: string;  (** role *)
  condition: google_workbench_instance_iam_member__condition list;
} [@@deriving yojson_of]
(** google_workbench_instance_iam_member *)

let google_workbench_instance_iam_member ?id ?location ?project  ~member ~name ~role ~condition __resource_id =
  let __resource_type = "google_workbench_instance_iam_member" in
  let __resource = {
    id;
    location;
    member;
    name;
    project;
    role;
    condition;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_workbench_instance_iam_member __resource);
  ()
  ;;

