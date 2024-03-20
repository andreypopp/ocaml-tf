(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_sms_channel = {
  application_id : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  sender_id : string prop option; [@option]
  short_code : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_pinpoint_sms_channel) -> ()

let yojson_of_aws_pinpoint_sms_channel =
  (function
   | {
       application_id = v_application_id;
       enabled = v_enabled;
       id = v_id;
       sender_id = v_sender_id;
       short_code = v_short_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_short_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "short_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sender_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sender_id", arg in
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
       `Assoc bnds
    : aws_pinpoint_sms_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_pinpoint_sms_channel

[@@@deriving.end]

let aws_pinpoint_sms_channel ?enabled ?id ?sender_id ?short_code
    ~application_id () : aws_pinpoint_sms_channel =
  { application_id; enabled; id; sender_id; short_code }

type t = {
  application_id : string prop;
  enabled : bool prop;
  id : string prop;
  promotional_messages_per_second : float prop;
  sender_id : string prop;
  short_code : string prop;
  transactional_messages_per_second : float prop;
}

let make ?enabled ?id ?sender_id ?short_code ~application_id __id =
  let __type = "aws_pinpoint_sms_channel" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       promotional_messages_per_second =
         Prop.computed __type __id "promotional_messages_per_second";
       sender_id = Prop.computed __type __id "sender_id";
       short_code = Prop.computed __type __id "short_code";
       transactional_messages_per_second =
         Prop.computed __type __id
           "transactional_messages_per_second";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_sms_channel
        (aws_pinpoint_sms_channel ?enabled ?id ?sender_id ?short_code
           ~application_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?sender_id ?short_code
    ~application_id __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?sender_id ?short_code ~application_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
