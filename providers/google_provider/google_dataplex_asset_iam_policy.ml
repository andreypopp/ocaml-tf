(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dataplex_asset_iam_policy = {
  asset : string;  (** asset *)
  dataplex_zone : string;  (** dataplex_zone *)
  lake : string;  (** lake *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_dataplex_asset_iam_policy *)

let google_dataplex_asset_iam_policy ~asset ~dataplex_zone ~lake
    ~policy_data __resource_id =
  let __resource_type = "google_dataplex_asset_iam_policy" in
  let __resource = { asset; dataplex_zone; lake; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_asset_iam_policy __resource);
  ()