(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataplex_asset_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_dataplex_asset_iam_binding__condition *)

type google_dataplex_asset_iam_binding = {
  asset : string prop;  (** asset *)
  dataplex_zone : string prop;  (** dataplex_zone *)
  id : string prop option; [@option]  (** id *)
  lake : string prop;  (** lake *)
  location : string prop option; [@option]  (** location *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : google_dataplex_asset_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_dataplex_asset_iam_binding *)

type t = {
  asset : string prop;
  dataplex_zone : string prop;
  etag : string prop;
  id : string prop;
  lake : string prop;
  location : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

let google_dataplex_asset_iam_binding ?id ?location ?project ~asset
    ~dataplex_zone ~lake ~members ~role ~condition __resource_id =
  let __resource_type = "google_dataplex_asset_iam_binding" in
  let __resource =
    ({
       asset;
       dataplex_zone;
       id;
       lake;
       location;
       members;
       project;
       role;
       condition;
     }
      : google_dataplex_asset_iam_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_asset_iam_binding __resource);
  let __resource_attributes =
    ({
       asset = Prop.computed __resource_type __resource_id "asset";
       dataplex_zone =
         Prop.computed __resource_type __resource_id "dataplex_zone";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       lake = Prop.computed __resource_type __resource_id "lake";
       location =
         Prop.computed __resource_type __resource_id "location";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
