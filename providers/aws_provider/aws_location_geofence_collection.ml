(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_location_geofence_collection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_location_geofence_collection__timeouts *)

type aws_location_geofence_collection = {
  collection_name : string prop;  (** collection_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_location_geofence_collection__timeouts option;
}
[@@deriving yojson_of]
(** aws_location_geofence_collection *)

let aws_location_geofence_collection ?description ?id ?kms_key_id
    ?tags ?tags_all ?timeouts ~collection_name __resource_id =
  let __resource_type = "aws_location_geofence_collection" in
  let __resource =
    {
      collection_name;
      description;
      id;
      kms_key_id;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_geofence_collection __resource);
  ()
