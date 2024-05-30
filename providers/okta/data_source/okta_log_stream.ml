(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type settings = unit [@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (yojson_of_unit : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

[@@@deriving.end]

type okta_log_stream = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  settings : settings;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_log_stream) -> ()

let yojson_of_okta_log_stream =
  (function
   | { id = v_id; name = v_name; settings = v_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_settings v_settings in
         ("settings", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       `Assoc bnds
    : okta_log_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_log_stream

[@@@deriving.end]

let settings () = ()

let okta_log_stream ?id ?name ~settings () : okta_log_stream =
  { id; name; settings }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  status : string prop;
  type_ : string prop;
}

let make ?id ?name ~settings __id =
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
        (okta_log_stream ?id ?name ~settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ~settings __id =
  let (r : _ Tf_core.resource) = make ?id ?name ~settings __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
