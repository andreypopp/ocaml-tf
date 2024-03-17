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

type t = {
  collection_arn : string prop;
  collection_name : string prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

let aws_location_geofence_collection ?description ?id ?kms_key_id
    ?tags ?tags_all ?timeouts ~collection_name __resource_id =
  let __resource_type = "aws_location_geofence_collection" in
  let __resource =
    ({
       collection_name;
       description;
       id;
       kms_key_id;
       tags;
       tags_all;
       timeouts;
     }
      : aws_location_geofence_collection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_geofence_collection __resource);
  let __resource_attributes =
    ({
       collection_arn =
         Prop.computed __resource_type __resource_id "collection_arn";
       collection_name =
         Prop.computed __resource_type __resource_id
           "collection_name";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
