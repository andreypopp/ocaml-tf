(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_scc_source_iam_policy = {
  id : string prop option; [@option]  (** id *)
  organization : string prop;  (** organization *)
  policy_data : string prop;  (** policy_data *)
  source : string prop;  (** source *)
}
[@@deriving yojson_of]
(** google_scc_source_iam_policy *)

let google_scc_source_iam_policy ?id ~organization ~policy_data
    ~source __resource_id =
  let __resource_type = "google_scc_source_iam_policy" in
  let __resource = { id; organization; policy_data; source } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_source_iam_policy __resource);
  ()
