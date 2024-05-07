(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_location_geofence_collection = {
  collection_name : string prop;
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location_geofence_collection) -> ()

let yojson_of_aws_location_geofence_collection =
  (function
   | {
       collection_name = v_collection_name;
       id = v_id;
       kms_key_id = v_kms_key_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_string v_collection_name
         in
         ("collection_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_location_geofence_collection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location_geofence_collection

[@@@deriving.end]

let aws_location_geofence_collection ?id ?kms_key_id ?tags
    ~collection_name () : aws_location_geofence_collection =
  { collection_name; id; kms_key_id; tags }

type t = {
  tf_name : string;
  collection_arn : string prop;
  collection_name : string prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  tags : (string * string) list prop;
  update_time : string prop;
}

let make ?id ?kms_key_id ?tags ~collection_name __id =
  let __type = "aws_location_geofence_collection" in
  let __attrs =
    ({
       tf_name = __id;
       collection_arn = Prop.computed __type __id "collection_arn";
       collection_name = Prop.computed __type __id "collection_name";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       tags = Prop.computed __type __id "tags";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_geofence_collection
        (aws_location_geofence_collection ?id ?kms_key_id ?tags
           ~collection_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_id ?tags ~collection_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_id ?tags ~collection_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
