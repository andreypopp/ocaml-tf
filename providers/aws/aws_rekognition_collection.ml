(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_rekognition_collection = {
  collection_id : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rekognition_collection) -> ()

let yojson_of_aws_rekognition_collection =
  (function
   | {
       collection_id = v_collection_id;
       tags = v_tags;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_collection_id in
         ("collection_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_rekognition_collection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rekognition_collection

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_rekognition_collection ?tags ?timeouts ~collection_id () :
    aws_rekognition_collection =
  { collection_id; tags; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  collection_id : string prop;
  face_model_version : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ?timeouts ~collection_id __id =
  let __type = "aws_rekognition_collection" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       collection_id = Prop.computed __type __id "collection_id";
       face_model_version =
         Prop.computed __type __id "face_model_version";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rekognition_collection
        (aws_rekognition_collection ?tags ?timeouts ~collection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?timeouts ~collection_id __id =
  let (r : _ Tf_core.resource) =
    make ?tags ?timeouts ~collection_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
