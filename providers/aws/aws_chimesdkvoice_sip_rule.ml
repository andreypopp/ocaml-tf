(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_applications = {
  aws_region : string prop;
  priority : float prop;
  sip_media_application_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_applications) -> ()

let yojson_of_target_applications =
  (function
   | {
       aws_region = v_aws_region;
       priority = v_priority;
       sip_media_application_id = v_sip_media_application_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sip_media_application_id
         in
         ("sip_media_application_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_aws_region in
         ("aws_region", arg) :: bnds
       in
       `Assoc bnds
    : target_applications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_applications

[@@@deriving.end]

type aws_chimesdkvoice_sip_rule = {
  disabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  trigger_type : string prop;
  trigger_value : string prop;
  target_applications : target_applications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chimesdkvoice_sip_rule) -> ()

let yojson_of_aws_chimesdkvoice_sip_rule =
  (function
   | {
       disabled = v_disabled;
       id = v_id;
       name = v_name;
       trigger_type = v_trigger_type;
       trigger_value = v_trigger_value;
       target_applications = v_target_applications;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_applications then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target_applications)
               v_target_applications
           in
           let bnd = "target_applications", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_trigger_value in
         ("trigger_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_trigger_type in
         ("trigger_type", arg) :: bnds
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
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_chimesdkvoice_sip_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chimesdkvoice_sip_rule

[@@@deriving.end]

let target_applications ~aws_region ~priority
    ~sip_media_application_id () : target_applications =
  { aws_region; priority; sip_media_application_id }

let aws_chimesdkvoice_sip_rule ?disabled ?id ~name ~trigger_type
    ~trigger_value ~target_applications () :
    aws_chimesdkvoice_sip_rule =
  {
    disabled;
    id;
    name;
    trigger_type;
    trigger_value;
    target_applications;
  }

type t = {
  tf_name : string;
  disabled : bool prop;
  id : string prop;
  name : string prop;
  trigger_type : string prop;
  trigger_value : string prop;
}

let make ?disabled ?id ~name ~trigger_type ~trigger_value
    ~target_applications __id =
  let __type = "aws_chimesdkvoice_sip_rule" in
  let __attrs =
    ({
       tf_name = __id;
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       trigger_type = Prop.computed __type __id "trigger_type";
       trigger_value = Prop.computed __type __id "trigger_value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chimesdkvoice_sip_rule
        (aws_chimesdkvoice_sip_rule ?disabled ?id ~name ~trigger_type
           ~trigger_value ~target_applications ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?id ~name ~trigger_type
    ~trigger_value ~target_applications __id =
  let (r : _ Tf_core.resource) =
    make ?disabled ?id ~name ~trigger_type ~trigger_value
      ~target_applications __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
