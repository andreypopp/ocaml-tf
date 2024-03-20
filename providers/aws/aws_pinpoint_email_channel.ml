(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_email_channel = {
  application_id : string prop;
  configuration_set : string prop option; [@option]
  enabled : bool prop option; [@option]
  from_address : string prop;
  id : string prop option; [@option]
  identity : string prop;
  role_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_pinpoint_email_channel) -> ()

let yojson_of_aws_pinpoint_email_channel =
  (function
   | {
       application_id = v_application_id;
       configuration_set = v_configuration_set;
       enabled = v_enabled;
       from_address = v_from_address;
       id = v_id;
       identity = v_identity;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identity in
         ("identity", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_from_address in
         ("from_address", arg) :: bnds
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
         match v_configuration_set with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration_set", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_pinpoint_email_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_pinpoint_email_channel

[@@@deriving.end]

let aws_pinpoint_email_channel ?configuration_set ?enabled ?id
    ?role_arn ~application_id ~from_address ~identity () :
    aws_pinpoint_email_channel =
  {
    application_id;
    configuration_set;
    enabled;
    from_address;
    id;
    identity;
    role_arn;
  }

type t = {
  application_id : string prop;
  configuration_set : string prop;
  enabled : bool prop;
  from_address : string prop;
  id : string prop;
  identity : string prop;
  messages_per_second : float prop;
  role_arn : string prop;
}

let make ?configuration_set ?enabled ?id ?role_arn ~application_id
    ~from_address ~identity __id =
  let __type = "aws_pinpoint_email_channel" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       configuration_set =
         Prop.computed __type __id "configuration_set";
       enabled = Prop.computed __type __id "enabled";
       from_address = Prop.computed __type __id "from_address";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       messages_per_second =
         Prop.computed __type __id "messages_per_second";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_email_channel
        (aws_pinpoint_email_channel ?configuration_set ?enabled ?id
           ?role_arn ~application_id ~from_address ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?configuration_set ?enabled ?id ?role_arn
    ~application_id ~from_address ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?configuration_set ?enabled ?id ?role_arn ~application_id
      ~from_address ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
