(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type cloudflare_authenticated_origin_pulls_certificate = {
  certificate : string prop;
  id : string prop option; [@option]
  private_key : string prop;
  type_ : string prop; [@key "type"]
  zone_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cloudflare_authenticated_origin_pulls_certificate) -> ()

let yojson_of_cloudflare_authenticated_origin_pulls_certificate =
  (function
   | {
       certificate = v_certificate;
       id = v_id;
       private_key = v_private_key;
       type_ = v_type_;
       zone_id = v_zone_id;
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
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_authenticated_origin_pulls_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_authenticated_origin_pulls_certificate

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let cloudflare_authenticated_origin_pulls_certificate ?id ?timeouts
    ~certificate ~private_key ~type_ ~zone_id () :
    cloudflare_authenticated_origin_pulls_certificate =
  { certificate; id; private_key; type_; zone_id; timeouts }

type t = {
  certificate : string prop;
  expires_on : string prop;
  id : string prop;
  issuer : string prop;
  private_key : string prop;
  serial_number : string prop;
  signature : string prop;
  status : string prop;
  type_ : string prop;
  uploaded_on : string prop;
  zone_id : string prop;
}

let make ?id ?timeouts ~certificate ~private_key ~type_ ~zone_id __id
    =
  let __type = "cloudflare_authenticated_origin_pulls_certificate" in
  let __attrs =
    ({
       certificate = Prop.computed __type __id "certificate";
       expires_on = Prop.computed __type __id "expires_on";
       id = Prop.computed __type __id "id";
       issuer = Prop.computed __type __id "issuer";
       private_key = Prop.computed __type __id "private_key";
       serial_number = Prop.computed __type __id "serial_number";
       signature = Prop.computed __type __id "signature";
       status = Prop.computed __type __id "status";
       type_ = Prop.computed __type __id "type";
       uploaded_on = Prop.computed __type __id "uploaded_on";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_authenticated_origin_pulls_certificate
        (cloudflare_authenticated_origin_pulls_certificate ?id
           ?timeouts ~certificate ~private_key ~type_ ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~certificate ~private_key
    ~type_ ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~certificate ~private_key ~type_ ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
