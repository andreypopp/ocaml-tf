(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
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

type google_iap_client = {
  brand : string prop;
  display_name : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iap_client) -> ()

let yojson_of_google_iap_client =
  (function
   | {
       brand = v_brand;
       display_name = v_display_name;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand in
         ("brand", arg) :: bnds
       in
       `Assoc bnds
    : google_iap_client -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iap_client

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_iap_client ?id ?timeouts ~brand ~display_name () :
    google_iap_client =
  { brand; display_name; id; timeouts }

type t = {
  brand : string prop;
  client_id : string prop;
  display_name : string prop;
  id : string prop;
  secret : string prop;
}

let make ?id ?timeouts ~brand ~display_name __id =
  let __type = "google_iap_client" in
  let __attrs =
    ({
       brand = Prop.computed __type __id "brand";
       client_id = Prop.computed __type __id "client_id";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       secret = Prop.computed __type __id "secret";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iap_client
        (google_iap_client ?id ?timeouts ~brand ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~brand ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~brand ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
