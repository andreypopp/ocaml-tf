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

type google_public_ca_external_account_key = {
  id : string prop option; [@option]
  location : string prop option; [@option]
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_public_ca_external_account_key) -> ()

let yojson_of_google_public_ca_external_account_key =
  (function
   | {
       id = v_id;
       location = v_location;
       project = v_project;
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
    : google_public_ca_external_account_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_public_ca_external_account_key

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_public_ca_external_account_key ?id ?location ?project
    ?timeouts () : google_public_ca_external_account_key =
  { id; location; project; timeouts }

type t = {
  b64_mac_key : string prop;
  id : string prop;
  key_id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let make ?id ?location ?project ?timeouts __id =
  let __type = "google_public_ca_external_account_key" in
  let __attrs =
    ({
       b64_mac_key = Prop.computed __type __id "b64_mac_key";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_public_ca_external_account_key
        (google_public_ca_external_account_key ?id ?location ?project
           ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
