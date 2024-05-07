(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_location_tracker = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tracker_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location_tracker) -> ()

let yojson_of_aws_location_tracker =
  (function
   | { id = v_id; tags = v_tags; tracker_name = v_tracker_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tracker_name in
         ("tracker_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_location_tracker -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location_tracker

[@@@deriving.end]

let aws_location_tracker ?id ?tags ~tracker_name () :
    aws_location_tracker =
  { id; tags; tracker_name }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  position_filtering : string prop;
  tags : (string * string) list prop;
  tracker_arn : string prop;
  tracker_name : string prop;
  update_time : string prop;
}

let make ?id ?tags ~tracker_name __id =
  let __type = "aws_location_tracker" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       position_filtering =
         Prop.computed __type __id "position_filtering";
       tags = Prop.computed __type __id "tags";
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
        (aws_location_tracker ?id ?tags ~tracker_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~tracker_name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~tracker_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
