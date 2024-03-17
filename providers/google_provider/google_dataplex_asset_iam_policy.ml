(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataplex_asset_iam_policy = {
  asset : string;  (** asset *)
  dataplex_zone : string;  (** dataplex_zone *)
  id : string option; [@option]  (** id *)
  lake : string;  (** lake *)
  location : string option; [@option]  (** location *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_dataplex_asset_iam_policy *)

let google_dataplex_asset_iam_policy ?id ?location ?project ~asset
    ~dataplex_zone ~lake ~policy_data __resource_id =
  let __resource_type = "google_dataplex_asset_iam_policy" in
  let __resource =
    {
      asset;
      dataplex_zone;
      id;
      lake;
      location;
      policy_data;
      project;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_asset_iam_policy __resource);
  ()
