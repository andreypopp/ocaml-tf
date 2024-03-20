(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_location_tracker = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  position_filtering : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  tracker_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location_tracker) -> ()

let yojson_of_aws_location_tracker =
  (function
   | {
       description = v_description;
       id = v_id;
       kms_key_id = v_kms_key_id;
       position_filtering = v_position_filtering;
       tags = v_tags;
       tags_all = v_tags_all;
       tracker_name = v_tracker_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tracker_name in
         ("tracker_name", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_position_filtering with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "position_filtering", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_location_tracker -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location_tracker

[@@@deriving.end]

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
