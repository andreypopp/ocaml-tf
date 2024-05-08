(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_configuration = {
  auto_enable : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_configuration) -> ()

let yojson_of_additional_configuration =
  (function
   | { auto_enable = v_auto_enable; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auto_enable in
         ("auto_enable", arg) :: bnds
       in
       `Assoc bnds
    : additional_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_configuration

[@@@deriving.end]

type aws_guardduty_organization_configuration_feature = {
  auto_enable : string prop;
  detector_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  additional_configuration : additional_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_guardduty_organization_configuration_feature) -> ()

let yojson_of_aws_guardduty_organization_configuration_feature =
  (function
   | {
       auto_enable = v_auto_enable;
       detector_id = v_detector_id;
       id = v_id;
       name = v_name;
       additional_configuration = v_additional_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_additional_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_additional_configuration)
               v_additional_configuration
           in
           let bnd = "additional_configuration", arg in
           bnd :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auto_enable in
         ("auto_enable", arg) :: bnds
       in
       `Assoc bnds
    : aws_guardduty_organization_configuration_feature ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_organization_configuration_feature

[@@@deriving.end]

let additional_configuration ~auto_enable ~name () :
    additional_configuration =
  { auto_enable; name }

let aws_guardduty_organization_configuration_feature ?id
    ?(additional_configuration = []) ~auto_enable ~detector_id ~name
    () : aws_guardduty_organization_configuration_feature =
  { auto_enable; detector_id; id; name; additional_configuration }

type t = {
  tf_name : string;
  auto_enable : string prop;
  detector_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?(additional_configuration = []) ~auto_enable
    ~detector_id ~name __id =
  let __type = "aws_guardduty_organization_configuration_feature" in
  let __attrs =
    ({
       tf_name = __id;
       auto_enable = Prop.computed __type __id "auto_enable";
       detector_id = Prop.computed __type __id "detector_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_organization_configuration_feature
        (aws_guardduty_organization_configuration_feature ?id
           ~additional_configuration ~auto_enable ~detector_id ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(additional_configuration = [])
    ~auto_enable ~detector_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~additional_configuration ~auto_enable ~detector_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
