(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_chime_voice_connector_termination = {
  calling_regions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  cidr_allow_list : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  cps_limit : float prop option; [@option]
  default_phone_number : string prop option; [@option]
  disabled : bool prop option; [@option]
  id : string prop option; [@option]
  voice_connector_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chime_voice_connector_termination) -> ()

let yojson_of_aws_chime_voice_connector_termination =
  (function
   | {
       calling_regions = v_calling_regions;
       cidr_allow_list = v_cidr_allow_list;
       cps_limit = v_cps_limit;
       default_phone_number = v_default_phone_number;
       disabled = v_disabled;
       id = v_id;
       voice_connector_id = v_voice_connector_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_voice_connector_id
         in
         ("voice_connector_id", arg) :: bnds
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
       let bnds =
         match v_default_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cps_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cps_limit", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_cidr_allow_list then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cidr_allow_list
           in
           let bnd = "cidr_allow_list", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_calling_regions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_calling_regions
           in
           let bnd = "calling_regions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_chime_voice_connector_termination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chime_voice_connector_termination

[@@@deriving.end]

let aws_chime_voice_connector_termination ?cps_limit
    ?default_phone_number ?disabled ?id ~calling_regions
    ~cidr_allow_list ~voice_connector_id () :
    aws_chime_voice_connector_termination =
  {
    calling_regions;
    cidr_allow_list;
    cps_limit;
    default_phone_number;
    disabled;
    id;
    voice_connector_id;
  }

type t = {
  tf_name : string;
  calling_regions : string list prop;
  cidr_allow_list : string list prop;
  cps_limit : float prop;
  default_phone_number : string prop;
  disabled : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

let make ?cps_limit ?default_phone_number ?disabled ?id
    ~calling_regions ~cidr_allow_list ~voice_connector_id __id =
  let __type = "aws_chime_voice_connector_termination" in
  let __attrs =
    ({
       tf_name = __id;
       calling_regions = Prop.computed __type __id "calling_regions";
       cidr_allow_list = Prop.computed __type __id "cidr_allow_list";
       cps_limit = Prop.computed __type __id "cps_limit";
       default_phone_number =
         Prop.computed __type __id "default_phone_number";
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       voice_connector_id =
         Prop.computed __type __id "voice_connector_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chime_voice_connector_termination
        (aws_chime_voice_connector_termination ?cps_limit
           ?default_phone_number ?disabled ?id ~calling_regions
           ~cidr_allow_list ~voice_connector_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cps_limit ?default_phone_number ?disabled
    ?id ~calling_regions ~cidr_allow_list ~voice_connector_id __id =
  let (r : _ Tf_core.resource) =
    make ?cps_limit ?default_phone_number ?disabled ?id
      ~calling_regions ~cidr_allow_list ~voice_connector_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
