(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type dnsimple_certificate = {
  certificate_id : float prop;
  domain : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_certificate) -> ()

let yojson_of_dnsimple_certificate =
  (function
   | {
       certificate_id = v_certificate_id;
       domain = v_domain;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_certificate_id in
         ("certificate_id", arg) :: bnds
       in
       `Assoc bnds
    : dnsimple_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_certificate

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let dnsimple_certificate ?timeouts ~certificate_id ~domain () :
    dnsimple_certificate =
  { certificate_id; domain; timeouts }

type t = {
  tf_name : string;
  certificate_chain : string list prop;
  certificate_id : float prop;
  domain : string prop;
  id : string prop;
  private_key : string prop;
  root_certificate : string prop;
  server_certificate : string prop;
}

let make ?timeouts ~certificate_id ~domain __id =
  let __type = "dnsimple_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       certificate_id = Prop.computed __type __id "certificate_id";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       private_key = Prop.computed __type __id "private_key";
       root_certificate =
         Prop.computed __type __id "root_certificate";
       server_certificate =
         Prop.computed __type __id "server_certificate";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_dnsimple_certificate
        (dnsimple_certificate ?timeouts ~certificate_id ~domain ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~certificate_id ~domain __id =
  let (r : _ Tf_core.resource) =
    make ?timeouts ~certificate_id ~domain __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
