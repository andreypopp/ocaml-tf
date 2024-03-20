(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_location_geofence_collection = {
  collection_name : string prop;  (** collection_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_location_geofence_collection *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_location_geofence_collection ?description ?id ?kms_key_id
    ?tags ?tags_all ?timeouts ~collection_name () :
    aws_location_geofence_collection =
  {
    collection_name;
    description;
    id;
    kms_key_id;
    tags;
    tags_all;
    timeouts;
  }

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

let make ?description ?id ?kms_key_id ?tags ?tags_all ?timeouts
    ~collection_name __id =
  let __type = "aws_location_geofence_collection" in
  let __attrs =
    ({
       collection_arn = Prop.computed __type __id "collection_arn";
       collection_name = Prop.computed __type __id "collection_name";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_geofence_collection
        (aws_location_geofence_collection ?description ?id
           ?kms_key_id ?tags ?tags_all ?timeouts ~collection_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kms_key_id ?tags ?tags_all
    ?timeouts ~collection_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kms_key_id ?tags ?tags_all ?timeouts
      ~collection_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
