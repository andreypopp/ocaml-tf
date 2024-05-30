(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type headers = {
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : headers) -> ()

let yojson_of_headers =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : headers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_headers

[@@@deriving.end]

type okta_inline_hook = {
  auth : (string * string prop) list option; [@option]
  channel : (string * string prop) list;
  id : string prop option; [@option]
  name : string prop;
  status : string prop option; [@option]
  type_ : string prop; [@key "type"]
  version : string prop;
  headers : headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_inline_hook) -> ()

let yojson_of_okta_inline_hook =
  (function
   | {
       auth = v_auth;
       channel = v_channel;
       id = v_id;
       name = v_name;
       status = v_status;
       type_ = v_type_;
       version = v_version;
       headers = v_headers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_headers then bnds
         else
           let arg = (yojson_of_list yojson_of_headers) v_headers in
           let bnd = "headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
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
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_channel
         in
         ("channel", arg) :: bnds
       in
       let bnds =
         match v_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "auth", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_inline_hook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_inline_hook

[@@@deriving.end]

let headers ?key ?value () : headers = { key; value }

let okta_inline_hook ?auth ?id ?status ~channel ~name ~type_ ~version
    ~headers () : okta_inline_hook =
  { auth; channel; id; name; status; type_; version; headers }

type t = {
  tf_name : string;
  auth : (string * string) list prop;
  channel : (string * string) list prop;
  id : string prop;
  name : string prop;
  status : string prop;
  type_ : string prop;
  version : string prop;
}

let make ?auth ?id ?status ~channel ~name ~type_ ~version ~headers
    __id =
  let __type = "okta_inline_hook" in
  let __attrs =
    ({
       tf_name = __id;
       auth = Prop.computed __type __id "auth";
       channel = Prop.computed __type __id "channel";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_inline_hook
        (okta_inline_hook ?auth ?id ?status ~channel ~name ~type_
           ~version ~headers ());
    attrs = __attrs;
  }

let register ?tf_module ?auth ?id ?status ~channel ~name ~type_
    ~version ~headers __id =
  let (r : _ Tf_core.resource) =
    make ?auth ?id ?status ~channel ~name ~type_ ~version ~headers
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
