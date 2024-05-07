(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_adm_channel = {
  application_id : string prop;
  client_id : string prop;
  client_secret : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_pinpoint_adm_channel) -> ()

let yojson_of_aws_pinpoint_adm_channel =
  (function
   | {
       application_id = v_application_id;
       client_id = v_client_id;
       client_secret = v_client_secret;
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
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_pinpoint_adm_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_pinpoint_adm_channel

[@@@deriving.end]

let aws_pinpoint_adm_channel ?enabled ?id ~application_id ~client_id
    ~client_secret () : aws_pinpoint_adm_channel =
  { application_id; client_id; client_secret; enabled; id }

type t = {
  tf_name : string;
  application_id : string prop;
  client_id : string prop;
  client_secret : string prop;
  enabled : bool prop;
  id : string prop;
}

let make ?enabled ?id ~application_id ~client_id ~client_secret __id
    =
  let __type = "aws_pinpoint_adm_channel" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_adm_channel
        (aws_pinpoint_adm_channel ?enabled ?id ~application_id
           ~client_id ~client_secret ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ~application_id ~client_id
    ~client_secret __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ~application_id ~client_id ~client_secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
