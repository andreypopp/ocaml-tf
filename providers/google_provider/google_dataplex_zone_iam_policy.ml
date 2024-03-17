(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataplex_zone_iam_policy = {
  dataplex_zone : string prop;  (** dataplex_zone *)
  id : string prop option; [@option]  (** id *)
  lake : string prop;  (** lake *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_dataplex_zone_iam_policy *)

type t = {
  dataplex_zone : string prop;
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

let google_dataplex_zone_iam_policy ?id ?location ?project
    ~dataplex_zone ~lake ~policy_data __resource_id =
  let __resource_type = "google_dataplex_zone_iam_policy" in
  let __resource =
    ({ dataplex_zone; id; lake; location; policy_data; project }
      : google_dataplex_zone_iam_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_zone_iam_policy __resource);
  let __resource_attributes =
    ({
       dataplex_zone =
         Prop.computed __resource_type __resource_id "dataplex_zone";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       lake = Prop.computed __resource_type __resource_id "lake";
       location =
         Prop.computed __resource_type __resource_id "location";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
