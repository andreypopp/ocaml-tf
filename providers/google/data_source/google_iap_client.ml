(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_iap_client = {
  brand : string prop;
  client_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iap_client) -> ()

let yojson_of_google_iap_client =
  (function
   | { brand = v_brand; client_id = v_client_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brand in
         ("brand", arg) :: bnds
       in
       `Assoc bnds
    : google_iap_client -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iap_client

[@@@deriving.end]

let google_iap_client ?id ~brand ~client_id () : google_iap_client =
  { brand; client_id; id }

type t = {
  brand : string prop;
  client_id : string prop;
  display_name : string prop;
  id : string prop;
  secret : string prop;
}

let make ?id ~brand ~client_id __id =
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
        (google_iap_client ?id ~brand ~client_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~brand ~client_id __id =
  let (r : _ Tf_core.resource) = make ?id ~brand ~client_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
