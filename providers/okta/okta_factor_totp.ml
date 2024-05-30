(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_factor_totp = {
  clock_drift_interval : float prop option; [@option]
  hmac_algorithm : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  otp_length : float prop option; [@option]
  shared_secret_encoding : string prop option; [@option]
  time_step : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_factor_totp) -> ()

let yojson_of_okta_factor_totp =
  (function
   | {
       clock_drift_interval = v_clock_drift_interval;
       hmac_algorithm = v_hmac_algorithm;
       id = v_id;
       name = v_name;
       otp_length = v_otp_length;
       shared_secret_encoding = v_shared_secret_encoding;
       time_step = v_time_step;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time_step with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "time_step", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shared_secret_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shared_secret_encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_otp_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "otp_length", arg in
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
         match v_hmac_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hmac_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_clock_drift_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "clock_drift_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_factor_totp -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_factor_totp

[@@@deriving.end]

let okta_factor_totp ?clock_drift_interval ?hmac_algorithm ?id
    ?otp_length ?shared_secret_encoding ?time_step ~name () :
    okta_factor_totp =
  {
    clock_drift_interval;
    hmac_algorithm;
    id;
    name;
    otp_length;
    shared_secret_encoding;
    time_step;
  }

type t = {
  tf_name : string;
  clock_drift_interval : float prop;
  hmac_algorithm : string prop;
  id : string prop;
  name : string prop;
  otp_length : float prop;
  shared_secret_encoding : string prop;
  time_step : float prop;
}

let make ?clock_drift_interval ?hmac_algorithm ?id ?otp_length
    ?shared_secret_encoding ?time_step ~name __id =
  let __type = "okta_factor_totp" in
  let __attrs =
    ({
       tf_name = __id;
       clock_drift_interval =
         Prop.computed __type __id "clock_drift_interval";
       hmac_algorithm = Prop.computed __type __id "hmac_algorithm";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       otp_length = Prop.computed __type __id "otp_length";
       shared_secret_encoding =
         Prop.computed __type __id "shared_secret_encoding";
       time_step = Prop.computed __type __id "time_step";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_factor_totp
        (okta_factor_totp ?clock_drift_interval ?hmac_algorithm ?id
           ?otp_length ?shared_secret_encoding ?time_step ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?clock_drift_interval ?hmac_algorithm ?id
    ?otp_length ?shared_secret_encoding ?time_step ~name __id =
  let (r : _ Tf_core.resource) =
    make ?clock_drift_interval ?hmac_algorithm ?id ?otp_length
      ?shared_secret_encoding ?time_step ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
