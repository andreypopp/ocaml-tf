(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_sourcerepo_repository_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_sourcerepo_repository_iam_member__condition *)

type google_sourcerepo_repository_iam_member = {
  member : string;  (** member *)
  repository : string;  (** repository *)
  role : string;  (** role *)
  condition : google_sourcerepo_repository_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_sourcerepo_repository_iam_member *)

let google_sourcerepo_repository_iam_member ~member ~repository ~role
    ~condition __resource_id =
  let __resource_type = "google_sourcerepo_repository_iam_member" in
  let __resource = { member; repository; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sourcerepo_repository_iam_member __resource);
  ()
