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

type google_site_verification_token = {
  id : string prop option; [@option]
  identifier : string prop;
  type_ : string prop; [@key "type"]
  verification_method : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_site_verification_token) -> ()

let yojson_of_google_site_verification_token =
  (function
   | {
       id = v_id;
       identifier = v_identifier;
       type_ = v_type_;
       verification_method = v_verification_method;
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
         let arg =
           yojson_of_prop yojson_of_string v_verification_method
         in
         ("verification_method", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identifier in
         ("identifier", arg) :: bnds
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
    : google_site_verification_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_site_verification_token

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let google_site_verification_token ?id ?timeouts ~identifier ~type_
    ~verification_method () : google_site_verification_token =
  { id; identifier; type_; verification_method; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  identifier : string prop;
  token : string prop;
  type_ : string prop;
  verification_method : string prop;
}

let make ?id ?timeouts ~identifier ~type_ ~verification_method __id =
  let __type = "google_site_verification_token" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       token = Prop.computed __type __id "token";
       type_ = Prop.computed __type __id "type";
       verification_method =
         Prop.computed __type __id "verification_method";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_site_verification_token
        (google_site_verification_token ?id ?timeouts ~identifier
           ~type_ ~verification_method ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~identifier ~type_
    ~verification_method __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~identifier ~type_ ~verification_method __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
