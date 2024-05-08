(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_configuration = {
  name : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_configuration) -> ()

let yojson_of_additional_configuration =
  (function
   | { name = v_name; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : additional_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_configuration

[@@@deriving.end]

type aws_guardduty_detector_feature = {
  detector_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  status : string prop;
  additional_configuration : additional_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_guardduty_detector_feature) -> ()

let yojson_of_aws_guardduty_detector_feature =
  (function
   | {
       detector_id = v_detector_id;
       id = v_id;
       name = v_name;
       status = v_status;
       additional_configuration = v_additional_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_additional_configuration)
               v_additional_configuration
           in
           let bnd = "additional_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_detector_id in
         ("detector_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_guardduty_detector_feature ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_detector_feature

[@@@deriving.end]

let additional_configuration ~name ~status () :
    additional_configuration =
  { name; status }

let aws_guardduty_detector_feature ?id
    ?(additional_configuration = []) ~detector_id ~name ~status () :
    aws_guardduty_detector_feature =
  { detector_id; id; name; status; additional_configuration }

type t = {
  tf_name : string;
  detector_id : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let make ?id ?(additional_configuration = []) ~detector_id ~name
    ~status __id =
  let __type = "aws_guardduty_detector_feature" in
  let __attrs =
    ({
       tf_name = __id;
       detector_id = Prop.computed __type __id "detector_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_detector_feature
        (aws_guardduty_detector_feature ?id ~additional_configuration
           ~detector_id ~name ~status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(additional_configuration = [])
    ~detector_id ~name ~status __id =
  let (r : _ Tf_core.resource) =
    make ?id ~additional_configuration ~detector_id ~name ~status
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
