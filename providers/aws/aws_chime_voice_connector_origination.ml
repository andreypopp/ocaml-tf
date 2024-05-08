(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type route = {
  host : string prop;
  port : float prop option; [@option]
  priority : float prop;
  protocol : string prop;
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : route) -> ()

let yojson_of_route =
  (function
   | {
       host = v_host;
       port = v_port;
       priority = v_priority;
       protocol = v_protocol;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_route

[@@@deriving.end]

type aws_chime_voice_connector_origination = {
  disabled : bool prop option; [@option]
  id : string prop option; [@option]
  voice_connector_id : string prop;
  route : route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chime_voice_connector_origination) -> ()

let yojson_of_aws_chime_voice_connector_origination =
  (function
   | {
       disabled = v_disabled;
       id = v_id;
       voice_connector_id = v_voice_connector_id;
       route = v_route;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_route then bnds
         else
           let arg = (yojson_of_list yojson_of_route) v_route in
           let bnd = "route", arg in
           bnd :: bnds
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
       `Assoc bnds
    : aws_chime_voice_connector_origination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chime_voice_connector_origination

[@@@deriving.end]

let route ?port ~host ~priority ~protocol ~weight () : route =
  { host; port; priority; protocol; weight }

let aws_chime_voice_connector_origination ?disabled ?id
    ~voice_connector_id ~route () :
    aws_chime_voice_connector_origination =
  { disabled; id; voice_connector_id; route }

type t = {
  tf_name : string;
  disabled : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

let make ?disabled ?id ~voice_connector_id ~route __id =
  let __type = "aws_chime_voice_connector_origination" in
  let __attrs =
    ({
       tf_name = __id;
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
      yojson_of_aws_chime_voice_connector_origination
        (aws_chime_voice_connector_origination ?disabled ?id
           ~voice_connector_id ~route ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?id ~voice_connector_id ~route __id
    =
  let (r : _ Tf_core.resource) =
    make ?disabled ?id ~voice_connector_id ~route __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
