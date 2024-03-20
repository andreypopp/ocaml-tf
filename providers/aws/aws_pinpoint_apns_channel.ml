(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_pinpoint_apns_channel = {
  application_id : string prop;
  bundle_id : string prop option; [@option]
  certificate : string prop option; [@option]
  default_authentication_method : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  private_key : string prop option; [@option]
  team_id : string prop option; [@option]
  token_key : string prop option; [@option]
  token_key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_pinpoint_apns_channel) -> ()

let yojson_of_aws_pinpoint_apns_channel =
  (function
   | {
       application_id = v_application_id;
       bundle_id = v_bundle_id;
       certificate = v_certificate;
       default_authentication_method =
         v_default_authentication_method;
       enabled = v_enabled;
       id = v_id;
       private_key = v_private_key;
       team_id = v_team_id;
       token_key = v_token_key;
       token_key_id = v_token_key_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_token_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_team_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "team_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key", arg in
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
         match v_default_authentication_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_authentication_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bundle_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bundle_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_pinpoint_apns_channel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_pinpoint_apns_channel

[@@@deriving.end]

let aws_pinpoint_apns_channel ?bundle_id ?certificate
    ?default_authentication_method ?enabled ?id ?private_key ?team_id
    ?token_key ?token_key_id ~application_id () :
    aws_pinpoint_apns_channel =
  {
    application_id;
    bundle_id;
    certificate;
    default_authentication_method;
    enabled;
    id;
    private_key;
    team_id;
    token_key;
    token_key_id;
  }

type t = {
  application_id : string prop;
  bundle_id : string prop;
  certificate : string prop;
  default_authentication_method : string prop;
  enabled : bool prop;
  id : string prop;
  private_key : string prop;
  team_id : string prop;
  token_key : string prop;
  token_key_id : string prop;
}

let make ?bundle_id ?certificate ?default_authentication_method
    ?enabled ?id ?private_key ?team_id ?token_key ?token_key_id
    ~application_id __id =
  let __type = "aws_pinpoint_apns_channel" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       bundle_id = Prop.computed __type __id "bundle_id";
       certificate = Prop.computed __type __id "certificate";
       default_authentication_method =
         Prop.computed __type __id "default_authentication_method";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       private_key = Prop.computed __type __id "private_key";
       team_id = Prop.computed __type __id "team_id";
       token_key = Prop.computed __type __id "token_key";
       token_key_id = Prop.computed __type __id "token_key_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_apns_channel
        (aws_pinpoint_apns_channel ?bundle_id ?certificate
           ?default_authentication_method ?enabled ?id ?private_key
           ?team_id ?token_key ?token_key_id ~application_id ());
    attrs = __attrs;
  }

let register ?tf_module ?bundle_id ?certificate
    ?default_authentication_method ?enabled ?id ?private_key ?team_id
    ?token_key ?token_key_id ~application_id __id =
  let (r : _ Tf_core.resource) =
    make ?bundle_id ?certificate ?default_authentication_method
      ?enabled ?id ?private_key ?team_id ?token_key ?token_key_id
      ~application_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
