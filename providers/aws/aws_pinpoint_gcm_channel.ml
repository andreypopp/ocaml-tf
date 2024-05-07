(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_gcm_channel = {
  api_key : string prop;
  application_id : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_pinpoint_gcm_channel) -> ()

let yojson_of_aws_pinpoint_gcm_channel =
  (function
   | {
       api_key = v_api_key;
       application_id = v_application_id;
       enabled = v_enabled;
       id = v_id;
     } ->
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
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : aws_pinpoint_gcm_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_pinpoint_gcm_channel

[@@@deriving.end]

let aws_pinpoint_gcm_channel ?enabled ?id ~api_key ~application_id ()
    : aws_pinpoint_gcm_channel =
  { api_key; application_id; enabled; id }

type t = {
  tf_name : string;
  api_key : string prop;
  application_id : string prop;
  enabled : bool prop;
  id : string prop;
}

let make ?enabled ?id ~api_key ~application_id __id =
  let __type = "aws_pinpoint_gcm_channel" in
  let __attrs =
    ({
       tf_name = __id;
       api_key = Prop.computed __type __id "api_key";
       application_id = Prop.computed __type __id "application_id";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_gcm_channel
        (aws_pinpoint_gcm_channel ?enabled ?id ~api_key
           ~application_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ~api_key ~application_id __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ~api_key ~application_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
