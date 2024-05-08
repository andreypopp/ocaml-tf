(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type features__additional_configuration = {
  name : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features__additional_configuration) -> ()

let yojson_of_features__additional_configuration =
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
    : features__additional_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features__additional_configuration

[@@@deriving.end]

type features = {
  additional_configuration : features__additional_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : features) -> ()

let yojson_of_features =
  (function
   | {
       additional_configuration = v_additional_configuration;
       name = v_name;
       status = v_status;
     } ->
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
       let bnds =
         if Stdlib.( = ) [] v_additional_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_features__additional_configuration)
               v_additional_configuration
           in
           let bnd = "additional_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : features -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features

[@@@deriving.end]

type aws_guardduty_detector = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_guardduty_detector) -> ()

let yojson_of_aws_guardduty_detector =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_guardduty_detector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_detector

[@@@deriving.end]

let aws_guardduty_detector ?id () : aws_guardduty_detector = { id }

type t = {
  tf_name : string;
  features : features list prop;
  finding_publishing_frequency : string prop;
  id : string prop;
  service_role_arn : string prop;
  status : string prop;
}

let make ?id __id =
  let __type = "aws_guardduty_detector" in
  let __attrs =
    ({
       tf_name = __id;
       features = Prop.computed __type __id "features";
       finding_publishing_frequency =
         Prop.computed __type __id "finding_publishing_frequency";
       id = Prop.computed __type __id "id";
       service_role_arn =
         Prop.computed __type __id "service_role_arn";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_detector
        (aws_guardduty_detector ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
