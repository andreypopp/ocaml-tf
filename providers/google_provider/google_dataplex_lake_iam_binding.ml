(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataplex_lake_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_dataplex_lake_iam_binding__condition *)

type google_dataplex_lake_iam_binding = {
  id : string option; [@option]  (** id *)
  lake : string;  (** lake *)
  location : string option; [@option]  (** location *)
  members : string list;  (** members *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  condition : google_dataplex_lake_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_dataplex_lake_iam_binding *)

let google_dataplex_lake_iam_binding ?id ?location ?project ~lake
    ~members ~role ~condition __resource_id =
  let __resource_type = "google_dataplex_lake_iam_binding" in
  let __resource =
    { id; lake; location; members; project; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_lake_iam_binding __resource);
  ()
