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
    ~source () : google_scc_source_iam_policy =
  { id; organization; policy_data; source }

type t = {
  etag : string prop;
  id : string prop;
  organization : string prop;
  policy_data : string prop;
  source : string prop;
}

let register ?tf_module ?id ~organization ~policy_data ~source
    __resource_id =
  let __resource_type = "google_scc_source_iam_policy" in
  let __resource =
    google_scc_source_iam_policy ?id ~organization ~policy_data
      ~source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_source_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       organization =
         Prop.computed __resource_type __resource_id "organization";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       source = Prop.computed __resource_type __resource_id "source";
     }
      : t)
  in
  __resource_attributes
