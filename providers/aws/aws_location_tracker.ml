(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_location_tracker = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  position_filtering : string prop option; [@option]
      (** position_filtering *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tracker_name : string prop;  (** tracker_name *)
}
[@@deriving yojson_of]
(** aws_location_tracker *)

let aws_location_tracker ?description ?id ?kms_key_id
    ?position_filtering ?tags ?tags_all ~tracker_name () :
    aws_location_tracker =
  {
    description;
    id;
    kms_key_id;
    position_filtering;
    tags;
    tags_all;
    tracker_name;
  }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  position_filtering : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tracker_arn : string prop;
  tracker_name : string prop;
  update_time : string prop;
}

let make ?description ?id ?kms_key_id ?position_filtering ?tags
    ?tags_all ~tracker_name __id =
  let __type = "aws_location_tracker" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       position_filtering =
         Prop.computed __type __id "position_filtering";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tracker_arn = Prop.computed __type __id "tracker_arn";
       tracker_name = Prop.computed __type __id "tracker_name";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_tracker
        (aws_location_tracker ?description ?id ?kms_key_id
           ?position_filtering ?tags ?tags_all ~tracker_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kms_key_id
    ?position_filtering ?tags ?tags_all ~tracker_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kms_key_id ?position_filtering ?tags
      ?tags_all ~tracker_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
