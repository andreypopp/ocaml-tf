(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_location_geofence_collection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_location_geofence_collection__timeouts *)

type aws_location_geofence_collection = {
  collection_name : string;  (** collection_name *)
  description : string option; [@option]  (** description *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_location_geofence_collection__timeouts option;
}
[@@deriving yojson_of]
(** aws_location_geofence_collection *)

let aws_location_geofence_collection ?description ?kms_key_id ?tags
    ?timeouts ~collection_name __resource_id =
  let __resource_type = "aws_location_geofence_collection" in
  let __resource =
    { collection_name; description; kms_key_id; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_geofence_collection __resource);
  ()
