(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dataplex_zone_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_dataplex_zone_iam_member__condition *)

type google_dataplex_zone_iam_member = {
  dataplex_zone : string;  (** dataplex_zone *)
  lake : string;  (** lake *)
  member : string;  (** member *)
  role : string;  (** role *)
  condition : google_dataplex_zone_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_dataplex_zone_iam_member *)

let google_dataplex_zone_iam_member ~dataplex_zone ~lake ~member
    ~role ~condition __resource_id =
  let __resource_type = "google_dataplex_zone_iam_member" in
  let __resource =
    { dataplex_zone; lake; member; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_zone_iam_member __resource);
  ()
