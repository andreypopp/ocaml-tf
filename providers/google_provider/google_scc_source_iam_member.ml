(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_scc_source_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_scc_source_iam_member__condition *)

type google_scc_source_iam_member = {
  id : string option; [@option]  (** id *)
  member : string;  (** member *)
  organization : string;  (** organization *)
  role : string;  (** role *)
  source : string;  (** source *)
  condition : google_scc_source_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_scc_source_iam_member *)

let google_scc_source_iam_member ?id ~member ~organization ~role
    ~source ~condition __resource_id =
  let __resource_type = "google_scc_source_iam_member" in
  let __resource =
    { id; member; organization; role; source; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_source_iam_member __resource);
  ()
