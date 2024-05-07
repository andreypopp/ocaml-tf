(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
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

type aws_rekognition_project = {
  auto_update : string prop option; [@option]
  feature : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rekognition_project) -> ()

let yojson_of_aws_rekognition_project =
  (function
   | {
       auto_update = v_auto_update;
       feature = v_feature;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_feature with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "feature", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_update", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rekognition_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rekognition_project

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_rekognition_project ?auto_update ?feature ?timeouts ~name ()
    : aws_rekognition_project =
  { auto_update; feature; name; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  auto_update : string prop;
  feature : string prop;
  id : string prop;
  name : string prop;
}

let make ?auto_update ?feature ?timeouts ~name __id =
  let __type = "aws_rekognition_project" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_update = Prop.computed __type __id "auto_update";
       feature = Prop.computed __type __id "feature";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rekognition_project
        (aws_rekognition_project ?auto_update ?feature ?timeouts
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_update ?feature ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?auto_update ?feature ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
