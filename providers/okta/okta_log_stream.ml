(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type settings = {
  account_id : string prop option; [@option]
  edition : string prop option; [@option]
  event_source_name : string prop option; [@option]
  host : string prop option; [@option]
  region : string prop option; [@option]
  token : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (function
   | {
       account_id = v_account_id;
       edition = v_edition;
       event_source_name = v_event_source_name;
       host = v_host;
       region = v_region;
       token = v_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_source_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_source_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

[@@@deriving.end]

type okta_log_stream = {
  name : string prop;
  status : string prop option; [@option]
  type_ : string prop; [@key "type"]
  settings : settings;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_log_stream) -> ()

let yojson_of_okta_log_stream =
  (function
   | {
       name = v_name;
       status = v_status;
       type_ = v_type_;
       settings = v_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_settings v_settings in
         ("settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : okta_log_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_log_stream

[@@@deriving.end]

let settings ?account_id ?edition ?event_source_name ?host ?region
    ?token () : settings =
  { account_id; edition; event_source_name; host; region; token }

let okta_log_stream ?status ~name ~type_ ~settings () :
    okta_log_stream =
  { name; status; type_; settings }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  status : string prop;
  type_ : string prop;
}

let make ?status ~name ~type_ ~settings __id =
  let __type = "okta_log_stream" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_log_stream
        (okta_log_stream ?status ~name ~type_ ~settings ());
    attrs = __attrs;
  }

let register ?tf_module ?status ~name ~type_ ~settings __id =
  let (r : _ Tf_core.resource) =
    make ?status ~name ~type_ ~settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
