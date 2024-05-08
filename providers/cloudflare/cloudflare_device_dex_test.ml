(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data = {
  host : string prop;
  kind : string prop;
  method_ : string prop option; [@option] [@key "method"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data) -> ()

let yojson_of_data =
  (function
   | { host = v_host; kind = v_kind; method_ = v_method_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data

[@@@deriving.end]

type cloudflare_device_dex_test = {
  account_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop option; [@option]
  interval : string prop;
  name : string prop;
  data : data list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_device_dex_test) -> ()

let yojson_of_cloudflare_device_dex_test =
  (function
   | {
       account_id = v_account_id;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       interval = v_interval;
       name = v_name;
       data = v_data;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data then bnds
         else
           let arg = (yojson_of_list yojson_of_data) v_data in
           let bnd = "data", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interval in
         ("interval", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_device_dex_test -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_device_dex_test

[@@@deriving.end]

let data ?method_ ~host ~kind () : data = { host; kind; method_ }

let cloudflare_device_dex_test ?id ~account_id ~description ~enabled
    ~interval ~name ~data () : cloudflare_device_dex_test =
  { account_id; description; enabled; id; interval; name; data }

type t = {
  tf_name : string;
  account_id : string prop;
  created : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  interval : string prop;
  name : string prop;
  updated : string prop;
}

let make ?id ~account_id ~description ~enabled ~interval ~name ~data
    __id =
  let __type = "cloudflare_device_dex_test" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       created = Prop.computed __type __id "created";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       name = Prop.computed __type __id "name";
       updated = Prop.computed __type __id "updated";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_device_dex_test
        (cloudflare_device_dex_test ?id ~account_id ~description
           ~enabled ~interval ~name ~data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~description ~enabled
    ~interval ~name ~data __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~description ~enabled ~interval ~name ~data
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
